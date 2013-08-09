class ApplicationController < ActionController::Base
  protect_from_forgery

protected
  def current_type_of_service
    @tos ||= TypeOfService.find(params[:type_of_service_id] || params[:id])
  end
  helper_method :current_type_of_service

  def current_service
    @service ||= Service.find(params[:service_id] || params[:id])
  end
  helper_method :current_service

  def current_career_article
    @career_article ||= CareerArticle.find( params[:career_article_id] ||params[:id])
  end
  helper_method :current_career_article

  def current_machine
    @machine ||= Machine.find( params[:machine_id] ||params[:id])
  end
  helper_method :current_machine
end
