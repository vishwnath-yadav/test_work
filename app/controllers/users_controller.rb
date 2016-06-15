class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
	  permitted = params[:user].permit(:email, :password, :name)
	  @user = User.new(permitted)

	  if @user.save
	    redirect_to root_path
	  else
	    render :new
	  end
    end
end
