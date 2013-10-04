class UsersController < ApplicationController

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to @user, 			
			success: "Welcome to my Web site!"
		else
			render 'new'
		end
	end

	def show
		@user = User.find(params[:id])
	end	

	def new
		@user = User.new
	end


	private

	def user_params
	    params.require(:user).permit(:name, :email, :password, :password_confirmation)
	    
	end
	
	
end
