class SessionsController < ApplicationController
  def new
    @user = User.new
    render :new
	end

  def create
  	user_params = params.require(:user).permit( :email, :password)
  	@user = User.confirm(user_params)
		if @user
			binding.pry
  			login(@user)
  			redirect_to "/home"
		else
  			redirect_to "/sessions/new"
		end
	end

	def destroy
		@current_user = session[:user_id] = nil
		redirect_to "/splash"
	end
end
