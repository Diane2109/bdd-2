class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update, :show, :destroy]

   def set_user
     @user = User.find(params[:id])
   end

  def index
    require_user
    current_user
    if @current_user.user_admin? == true
      then @users = User.all
    else render 'companies#index'
    end
  end

  def show
    require_user
    current_user
  end

  def new
    require_user
    current_user
    if @current_user.user_admin? == true
      then @user = User.new
    else render 'companies#index'
    end
  end

  def create
    require_user
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Bonjour #{@user.user_first_name}, vous êtes bien un membre de l'équipe Winnovation."
      redirect_to users_path
    else
     render 'new'
    end
  end

  def edit
    current_user
    require_user
    @user = User.find(params[:id])
    if @current_user == @user || @current_user.user_admin? == true
    else redirect_to root_path
    end
  end

  def update
    require_user
    @user = User.find(params[:id])
    if @current_user == @user || @current_user.user_admin? == true
      if @user.update(user_params)
       flash[:success] = "Nous avons bien mis à jour les informations concernant #{@user.user_first_name} #{@user.user_last_name}."
       redirect_to users_path
      else
       render 'edit'
      end
    else redirect_to root_path
    end
  end

  def destroy
    require_user
    current_user
    if @current_user == @user
      then flash[:notice] = "Impossible de supprimer l'administrateur."
      redirect_to users_path
    else @user.destroy
      flash[:notice] = "#{@user.user_first_name} #{@user.user_last_name} a bien été supprimé."
      redirect_to users_path
    end
  end

  private
    def user_params
      params.require(:user).permit(:user_first_name, :user_last_name, :user_email, :password, :user_admin?)
    end

end
