class SumosController < ApplicationController
  def index
    @sumos = Sumo.order(:name)
  end
  
  def show
    @sumo = Sumo.find(params[:id])
  end
end