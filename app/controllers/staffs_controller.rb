class StaffsController < ApplicationController

  def index; end

  def show;end

  def residents; end

  def current_staff
    @staff= Staff.find( params[:staff_id] ||params[:id])
  end
  helper_method :current_staff
end
