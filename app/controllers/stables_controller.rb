class StablesController < ApplicationController
  
  def index
    @stables = Stable.all
  end

  def show
    @stable = Stable.find(params[:id])

    @stables = Stable.all
    @geojson_features = make_stables_geojson(@stables)
  end

end