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
          tile: stable.title,
          # :'marker-color' => stable.hexcolor,
          # :'marker-symbol' => 'circle',
          # :'marker-size' => 'medium'
        }
      }
    end

    respond_to do |format|
      format.html
      format.json { render json: @geojson }  # respond with the created JSON object
    end


  end
end