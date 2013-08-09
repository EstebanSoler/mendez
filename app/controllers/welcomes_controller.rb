class WelcomesController < ApplicationController

  def show;end

    def current_welcome
    @welcome= Welcome.find( params[:welcome_id] ||params[:id])
  end
  helper_method :current_welcome
end
