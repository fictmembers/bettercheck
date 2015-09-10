class SessionsController < ApplicationController
  protect_from_forgery with: :exception

	
  def new

  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_back_or user
    else
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end
end
