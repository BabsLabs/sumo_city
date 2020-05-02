class TermsController < ApplicationController
  def index
    @terms = Term.order(:english_name)
  end
end