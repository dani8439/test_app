class ArticlesController < ApplicationController 
  
  def show 
    # instance variable so it's available within the view
    # debugger
    @article = Article.find(params[:id])
  end

  def index 
    @articles = Article.all 
  end 
end 