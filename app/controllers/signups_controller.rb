class SignupsController < ApplicationController

	def new
		@signup = Signup.new
	end

	def create
		@signup = Signup.new(secure_params)
		if @signup.valid?
			redirect_to root_path
		else
			render :new
		end
	end

	private

	def secure_params
		params.require(:signup).permit(:email)
	end

end
