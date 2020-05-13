require 'csv'

desc "Import stables from CSV"
namespace :import do
  task :stables => [:environment] do
    
    counter = 0
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
                                        hexcolor: row[8],
                                        description: row[9],
                                        lon: long,
                                        lat: latt,
                                        other_info: row[11])
      puts "#{stable.title} found or imported ##{counter}"
      counter += 1
    end

  end
end