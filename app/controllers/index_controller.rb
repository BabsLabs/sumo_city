class IndexController < ApplicationController
  def index
    @term = Term.all.sample(1).first
  end
end