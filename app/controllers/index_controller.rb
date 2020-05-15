class IndexController < ApplicationController
  def index
    @term = Term.all.sample(1).first
   
    explorer_controller = ExplorerController.new
    explorer_controller.request = request
    explorer_controller.response = response
    @geojson_features = explorer_controller.index
  end
end