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

    mapbox_geojson_data = {
      type: 'FeatureCollection',
      features: geojson_features
    }

    json_mapbox_data = mapbox_geojson_data.to_json

    parsed_data = JSON.parse(json_mapbox_data)
  end

end
