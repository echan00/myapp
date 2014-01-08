class UsersController < ApplicationController
  before_filter :authenticate_user!, :except => [:show, :index]
  before_filter :correct_user?, :except => [:show, :index]
  helper_method :user_installed_ext?
  # TODO: ONLY ADMIN CAN SEE /users/index

  def index
    #@users = User.all
    if session[:user_id]
      @current_user ||= User.find(session[:user_id]) 
      @user = @current_user    
    else
      redirect_to '/home'
    end
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      redirect_to @user
    else
      render :edit
    end
  end

  def show
    @user = User.find(params[:id])
  end

    def user_installed_ext?
      return true if @user.installed_ext else return false
    end

end
