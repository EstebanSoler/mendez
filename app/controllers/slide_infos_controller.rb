class SlideInfosController < ApplicationController

  def show;end

  def current_slide
    @slide= SlideInfo.find( params[:slide_info_id] ||params[:id])
  end
  helper_method :current_slide
end
