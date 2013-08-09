class ArticlesController < ApplicationController

  def show; end

  def current_article
    @article ||= Article.find( params[:article_id] ||params[:id])
  end
  helper_method :current_article
end
