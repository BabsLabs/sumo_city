desc "Import sumo profile photos for SumoCity"
task :import_photos => [:environment] do
  photos_that_didnt_attach = Array.new
  sumos_without_photos = Array.new

  sumos = Sumo.all
  sumos.each do |sumo|
    Dir.foreach('lib/assets/photos') do |filename|
      next if filename == '.' or filename == '..'

      if !sumo.profile_photo.attached?
        if filename.gsub("_","").include?(sumo.name.downcase.gsub(" ","" ))
          sumo.profile_photo.attach(io: File.open("lib/assets/photos/#{filename}"), filename: filename, content_type: 'image/jpeg')
          puts("#{sumo.name} profile photo attached!") if sumo.profile_photo.attached?
        end
      else
        photos_that_didnt_attach << filename
        sumos_without_photos << sumo.name
        puts "Something Didn't Import!"
      end
    end
  end
  p photos_that_didnt_attach
  p sumos_without_photos
end