class HomeController < ApplicationController

  def index
    @posts = Post.all
    render 'posts/index'
  end

end
