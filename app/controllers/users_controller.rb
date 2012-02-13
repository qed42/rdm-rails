class UsersController < ApplicationController
  before_filter :require_user, :only => [:edit]

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "Registration successful."
      UserSession.create(params[:user])
      redirect_to root_url
    else
      render :action => 'new'
    end
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update_attributes(params[:user])
      flash[:notice] = "Successfully updated profile."
      redirect_to @user
    else
      render :action => 'edit'
    end
  end

  def show
    @user = User.find(params[:id])
  end
end
