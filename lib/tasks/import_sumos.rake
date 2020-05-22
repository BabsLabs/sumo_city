require 'csv'

desc "Import stables from CSV"
namespace :import do
  task :sumos => [:environment] do
    counter = 1
    csv_file = "db/data/sumocity_sumo_data.csv"
    CSV.foreach(csv_file, :headers => false) do |row|
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
      puts "#{sumo.name} found or imported ##{counter}"
      counter += 1
    end

  end
end