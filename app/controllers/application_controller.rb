class ApplicationController < ActionController::Base

  def make_stables_geojson(stable_collection)    
    geojson_features = Array.new

    stable_collection.each do |stable|
    geojson_features << {
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
      format.json { render json: geojson_features }  # respond with the created JSON object
    end
  end

end
