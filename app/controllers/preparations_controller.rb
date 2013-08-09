class PreparationsController < ApplicationController

  def show;end

    def current_preparation
    @preparation= Preparation.find( params[:preparation_id] ||params[:id])
  end
  helper_method :current_preparation
end
