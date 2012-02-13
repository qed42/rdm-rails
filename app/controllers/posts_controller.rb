class PostsController < ApplicationController
  before_filter :require_user, :only => [:new, :edit, :destroy]

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])
    @post.user = current_user

    if @post.save
      flash[:notice] = "Successfully created post"
      redirect_to @post
    else
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.user = current_user

    if @post.update_attributes(params[:post])
      flash[:notice] = "Successfully updated post"
      redirect_to @post
    else
      render :edit
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def index
    @posts = Post.all
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
  end

end
