desc "Import sumo profile photos for SumoCity"
task :import_photos => [:environment] do

  @sumo = Sumo.find_by(name: "Kakuryu Rikisaburo")
  @sumo.profile_photo.attach(io: File.open('lib/assets/photos/kakuryu_rikisaburo.jpeg'), filename: 'kakuryu_rikisaburo.jpeg', content_type: 'image/jpeg')
  puts("#{@sumo.name} profile photo attached!") if @sumo.profile_photo.attached?

end