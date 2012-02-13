class CommentsController < ApplicationController
  before_filter :require_user

  def create
    @comment = Comment.new(params[:comment])
    @comment.user = current_user
    @comment.save
    flash[:notice] = "Your comment has been successfully posted"
    redirect_to @comment.post
  end

end
