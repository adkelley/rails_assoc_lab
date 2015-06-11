class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(name: params[:user][:name])
    #binding.pry
    if user && user.password == params[:user][:password]
    #if user 
      # Login the user in and redirect to their books page
      log_in user
      redirect_to "/users/#{user.id}"
    else
      # Create an error message
      flash.now[:danger] = 'Invalid name/password combination'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end








