class ExplorerController < ApplicationController
  def index
    @stables = Stable.all
    @geojson_features = Array.new
    
    @stables.each do |stable|
      @geojson_features << {
        type: 'Feature',
        geometry: {
          type: 'Point',
          coordinates: [stable.lon, stable.lat]
        },
        properties: {
          title: stable.title,
          color: stable.hexcolor
        }
      }
    end

    respond_to do |format|
      format.html
      format.json { render json: @geojson_features }  # respond with the created JSON object
    end


  end
end