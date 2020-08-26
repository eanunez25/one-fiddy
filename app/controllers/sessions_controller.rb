class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to root_url
    else  
      flash.now[:danger] = "Invalid username/password comination."
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    flash[:success] = "You are logged out"
    redirect_to root_url
  end

end
