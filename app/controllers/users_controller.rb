class UsersController < ApplicationController

	def index
		@users = User.all 
	end

	def create
		@user = User.create(user_params)
		redirect_to root_path
	end

	private

	def user_params
		params.require(:user).permit(:name, :avatar)
	end
end
