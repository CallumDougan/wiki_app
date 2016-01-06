class ArticlesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  def index
    @articles = Article.all
  end

  def show
    @comment = Comment.new
    @comments = Comment.where(:article_id => params[:id])
  end

  def new
    @article = Article.new
  end

  def edit
  end

  def create
    @article = Article.new(article_params)

    respond_to do |format|
      if @article.save
        format.html { redirect_to Article.find(params[:article_id]), notice: 'Recipe was successfully created.' }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  def update

  end

  def destroy

  end

  def time_finder(time)
    raw_time = Time.now - time
    raw_time
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:name, :content)
  end
end
