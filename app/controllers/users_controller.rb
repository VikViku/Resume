class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize_access, only: [:edit, :update]
  before_action :set_user, only: [:show, :edit, :update]
  before_action :permit_user_params, only: :update
  layout :resolve_layout
  
  def index
    @users = User.all
  end

  def show
  	
  end

  def edit
  end

  def update
    if @user.update(user_params)
      flash[:success] = "Sėkmingai redaguota"
      redirect_to edit_user_path
    else
      flash[:error] = @user.errors.full_messages
      redirect_to edit_user_path
    end
  end

  private

  def authorize_access
    unless current_user == @user || current_user.admin?
      flash[:danger] = "No access"
      redirect_to :back
    end
  end

  def set_user
    @user = User.find(params[:id])
  end

  def permit_user_params
    if params[:user][:password].blank?
      params[:user].delete :password
      params[:user].delete :password_confirmation
    end
  end  

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, 
      :password, :password_confirmation, :username, :city, :birthday, 
      :avatar, :remove_avatar, :retained_avatar)
  end

  def resolve_layout
    case action_name
    when "index", "edit", "update"
      "dashboard"
    when "show"
      Thredded.layout
    else
      "dashboard"
    end
  end

end
