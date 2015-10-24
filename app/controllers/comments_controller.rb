class CommentsController < ApplicationController
    before_action :find_comment, except: [:new, :create, :index]
    
  def new

    @content = Content.find(params[:content_id])
    @comment = @content.comments.new
  end

  def show
    @content = Content.find(params[:content_id])
    @comment = Comment.find(params[:id])
    render :show
  end

  def create

    @content = Content.find(params[:content_id])
    @comment = @content.comments.new(comment_params)
    if @comment.save
      redirect_to post_path(@content.post)
    else
      render :new
    end
  end

  def edit
    @content = Content.find(params[:content_id])
    @comment = @content.comments.find(params[:id])
    render :edit
  end

  def update
    @comment = Comment.find(params[:content_id])
    if @comment.update(comment_params)
      redirect_to contents_path
    else
      render :edit
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to content_path
  end
end

private
def comment_params
  params.require(:comment).permit(:text, :author, :content_id)
end
