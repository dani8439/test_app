class ArticlesController < ApplicationController 
  
  def show 
    # instance variable so it's available within the view
    # debugger
    @article = Article.find(params[:id])
  end

  def index 
    @articles = Article.all 
  end 

  def new 
    # @article = Article.new 
  end 

  def create 
    @article = Article.new(params.require(:article).permit(:title, :description))
    # render plain: @article.inspect
    @article.save 
    # redirect_to article_path(@article)
    redirect_to @article 
  end 
end 