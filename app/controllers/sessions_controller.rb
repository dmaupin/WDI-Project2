
class SessionsController < ApplicationController

	def new
	end

	def create		
		user = User.where(email: params[:user][:email]).first

		if user && user.authenticate(params[:user][:password])
			session[:user_id] = user.id 
			# = u.id.to_string
			redirect_to beers_path
		else
			render :new
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to beers_path
	end

end