class ExplorerController < ApplicationController
  def index
    @stables = Stable.all
    @geojson = Array.new
    
    @stables.each do |stable|
      @geojson << {
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
      format.json { render json: @geojson }  # respond with the created JSON object
    end


  end
end