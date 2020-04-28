require 'nokogiri'
require 'open-uri'
require 'csv'

desc "Import terms from internet"
  task :import_terms => [:environment] do

    document = Nokogiri::HTML.parse(open('https://en.wikipedia.org/wiki/Glossary_of_sumo_terms'))

    puts "Document Type: #{document.class}"

    names = document.xpath("//dt")

    n = 1
    names.each do |name|
      name_text = name.text
      puts "#{name_text} #{n}"
      split_name = name_text.split(" (")
      english_name = split_name[0]
      japanese_name = split_name[1]
      n += 1
      term = Term.find_or_create_by(english_name: english_name, japanese_name: japanese_name)
      puts "#{name_text} saved! #{n}" if term.save
    end

    definitions = document.xpath("//dd")

    q = 1
    definitions.each do |definition|
      puts "#{definition.text} #{q}"
      definition = definition.text
      term = Term.find(q)
      term.update(definition: definition)
      puts "#{definition} saved! #{q}" if term.save
      q += 1
    end

    s = 0
    csv_file = "db/data/sumocity_kimarite_terms.csv"
    CSV.foreach(csv_file, :headers => true) do |row|
      term = Term.find_or_create_by(english_name: row[0], japanese_name: row[1], definition: row[2])
      puts "#{row[0]} found or imported #{s}"
      s += 1
    end
  end