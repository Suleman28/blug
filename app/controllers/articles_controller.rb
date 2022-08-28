class ArticlesController < ApplicationController
  before_action :find_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def show
  end

  def new
    @article = Article.new
  end 

  def edit
  end

  def create 
    @article = Article.new(article_params)
    @article.user = User.first # Testing purposes - Until user authentication is implemented.
    if @article.save
        flash[:notice] = "Article has been created successfully"
        redirect_to @article
    else 
        render 'new'
        puts "An error occured: #{@article.errors.full_messages}"
    end
  end

  def update #
    if @article.update(article_params)
      flash[:notice] = "Article has been updated successfully"
      redirect_to @article
    else 
      render 'edit'
    end 
  end

  def destroy #
    @article.destroy
    redirect_to articles_path
  end 

  private 
  
  def find_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:author, :title, :description)
  end
end
