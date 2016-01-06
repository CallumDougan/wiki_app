class ArticlesController < ApplicationController
  before_action :authenticate_user!, only: [:show, :edit, :update, :destroy]
  before_action :set_article, only: [:show, :edit, :update, :destroy]

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

  end

  def update

  end

  def destroy

  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params

  end
end
