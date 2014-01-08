class UsersController < ApplicationController
  before_filter :authenticate_user!, :except => [:show, :index]
  before_filter :correct_user?, :except => [:show, :index]
  # TODO: ONLY ADMIN CAN SEE /users/index

  def index
    #@users = User.all
 
    if session[:user_id]
      @current_user ||= User.find(session[:user_id]) 
      @user = @current_user
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

end
