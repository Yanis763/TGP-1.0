class UsersController < ApplicationController
  def user
  	@id = params[:id]
  	@user = User.find(@id)
  	@user_first_name = @user.first_name
  	@user_last_name = @user.last_name
  	@user_email = @user.email
  	@user_age = @user.age
  	@user_description = @user.description
  end

  def new
	
  end

  def create
	@user = User.new
	@user.email = params[:email]
	@user.password = params[:password]
	@user.first_name = params[:first_name]
	@user.last_name = params[:last_name]
	
	if
		@user.save
		redirect_to root_path
	else
		redirect_to user_path
	end
  end
end