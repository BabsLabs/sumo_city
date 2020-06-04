class ExplorerController < ApplicationController
  def index
    @stables = Stable.all
    @geojson_features = make_stables_geojson(@stables)
  end
end