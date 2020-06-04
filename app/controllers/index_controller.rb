class IndexController < ApplicationController
  def index
    @sumo = Sumo.joins(:profile_photo_attachment).sample
    
    @term = Term.all.sample(1).first
    
    @stables = Stable.all
    @geojson_features = make_stables_geojson(@stables)
  end
end