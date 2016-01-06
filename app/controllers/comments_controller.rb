class CommentsController < ApplicationController

  before_action :authenticate_user!, only: [:destroy]
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  def index
    @comments = Comment.all
  end

  def show

  end

  def new
    @comment = Comment.new
  end

  def edit
  end

  def create
    @comment = Comment.new(comment_params)
    respond_to do |format|
      if @comment.save
<<<<<<< HEAD
<<<<<<< HEAD
        format.html { redirect_to Article.find(params[:art_id]), notice: 'successfully created.' }
=======
        format.html { redirect_to article_path(params["#{@comment}"]['article_id']), notice: 'successfully created.' }
>>>>>>> 9e8ca18cf7c77107991e0df08afbc3a5e8780c9a
=======
        format.html { redirect_to article_path(params['comment']['article_id']), notice: 'successfully created.' }
>>>>>>> 19f50783637ff9d90c2489a6bbcd5cedf567a07e
        format.json { render :show, status: :created, location: @comment }
      else
        format.html { render :new }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  def update

  end

  def destroy

  end

  private

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:name, :content)
  end

end
