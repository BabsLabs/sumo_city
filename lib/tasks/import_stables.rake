require 'csv'

desc "Import stables from internet"
namespace :import do
  task :stables => [:environment] do
    
    counter = 0
    csv_file = "db/data/sumocity_stable_data.csv"
    CSV.foreach(csv_file, :headers => true) do |row|
      stable = Stable.find_or_create_by(title: row[0], 
                                        ichimon: row[1], 
                                        founded: row[2],
                                        address: row[3],
                                        phone: row[4],
                                        closest_stations: row[5],
                                        website: row[6],
                                        hexcolor: row[7],
                                        description: row[8],
                                        coordinates: row[9],
                                        other_notable_information: row[10])
      puts "#{stable.title} found or imported ##{counter}"
      counter += 1
    end

  end
end