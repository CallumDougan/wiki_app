class CommentsController < ApplicationController

  before_action :authenticate_user!, except: [:index, :show]
  
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
    @comment.article_id = params[:comment][:set_id]
    @comment.user_id = current_user.id
    respond_to do |format|
      if @comment.save
        format.html { redirect_to article_path(params[:comment][:set_id]), notice: 'successfully created.' }
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
    params.require(:comment).permit(:name, :content, :user_id, :article_id)
  end

end
