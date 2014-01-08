class AssociationsController < ApplicationController
  before_filter :signed_in_user

  def create
    @user = User.find(params[:association][:product_id])
    current_user.follow!(@user)
    respond_to do |format|
      format.html { redirect_to @user }
      format.js
    end
  end

  def destroy
    @user = Association.find(params[:id]).associatied
    current_user.unassociate!(@user)
    respond_to do |format|
      format.html { redirect_to @user }
      format.js
    end
  end
end