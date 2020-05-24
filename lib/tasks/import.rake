require 'csv'

desc "Import data for SumoCity"
task :import => [:environment] do

  stable_counter = 0
  csv_file = "db/data/sumocity_stable_data.csv"
  CSV.foreach(csv_file, :headers => true) do |row|
    coord_split = row[10].split
    long = coord_split[1]
    latt = coord_split[0].gsub(",", "")
    stable = Stable.find_or_create_by(title: row[0], 
                                      ichimon: row[1], 
                                      founded: row[2],
                                      address: row[3],
                                      address_jp: row[4],
                                      phone: row[5],
                                      closest_stations: row[6],
                                      website: row[7],
                                      description: row[8],
                                      hexcolor: row[9],
                                      lon: long,
                                      lat: latt,
                                      other_info: row[11])
    puts "#{stable.title} found or imported! Stable ##{stable_counter}"
    stable_counter += 1
  end

  sumo_counter = 1
  csv_file = "db/data/sumocity_sumo_data.csv"
  CSV.foreach(csv_file, :headers => true) do |row|
    stable = Stable.where(title: "#{row[1]}-beya").first
    sumo = Sumo.find_or_create_by(name: row[0], 
                                  heya: row[1],
                                  full_name: row[2],
                                  ring_name: row[3],
                                  rank: row[4],
                                  date_of_birth: row[5],
                                  year_of_birth: row[6],
                                  place_of_birth: row[7],
                                  height: row[8],
                                  weight: row[9],
                                  favorite_techniques: row[10],
                                  stable_id: stable.id
                                )
    puts "#{sumo.name} found or imported! Sumo ##{sumo_counter}"
    sumo_counter += 1
  end

  term_counter = 0
  csv_file = "db/data/sumocity_terms_data.csv"
  CSV.foreach(csv_file, :headers => true) do |row|
    term = Term.find_or_create_by(english_name: row[0], japanese_name: row[1], definition: row[2])
    puts "#{row[0]} found or imported! Term ##{term_counter}"
    term_counter += 1
  end
end