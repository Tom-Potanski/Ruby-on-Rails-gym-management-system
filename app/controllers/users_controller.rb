

class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    @ars = ActivityRecord3.where(:user_id => @user.id).order('weekday_id ASC').order('start_time ASC')
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    # @user = User.new(params[:user])    # Not the final implementation!
    @user = User.new(user_params)    # Not the final implementation!
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def index
    @users = User.all
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation)
  end

end
