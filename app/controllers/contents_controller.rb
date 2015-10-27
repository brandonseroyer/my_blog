class ContentsController < ApplicationController
  def new
    @post = Post.find(params[:post_id])
    @content = @post.contents.new
  end

  def show
    @post = Post.find(params[:post_id])
    @content = Content.find(params[:id])
    render :show
  end

  def create
    @post = Post.find(params[:post_id])
    @content = @post.contents.new(content_params)
    if @content.save
      redirect_to post_path(@content.post)
    else
      render :new
    end
  end

  def edit
    @post = Post.find(params[:post_id])
    @content = @post.contents.find(params[:id])
    render :edit
  end

  def update
    @content = Content.find(params[:post_id])
    if @content.update(content_params)
      redirect_to posts_path
    else
      render :edit
    end
  end

  def destroy
    @content = Content.find(params[:id])
    @content.destroy
    redirect_to posts_path
  end
end

private
def content_params
  params.require(:content).permit(:entry)
end
