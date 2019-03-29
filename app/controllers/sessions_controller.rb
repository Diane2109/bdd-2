class SessionsController < ApplicationController
  def index
  end

  def new
    current_user
    if @current_user == nil
      else redirect_to dashboard_path
    end
  end

  def create
    user = User.find_by(user_email: params[:session][:user_email].downcase)
    if user && user.authenticate(params[:session][:password])
     session[:user_id] = user.id
     flash[:success] = "Vous êtes connecté.e."
     redirect_to companies_path
    else
     flash.now[:danger] = "Oups, une erreur s'est produite !"
     render 'new'
    end
   end

   def destroy
     session[:user_id] = nil
     flash[:success] = "Vous vous êtes déconnecté.e."
     redirect_to '/'
   end
end
