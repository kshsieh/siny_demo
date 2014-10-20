class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to users_path # , notice: 'User created!'
    else
      flash[:alert] = "Something went wrong! Please try again!"
      render action: :new
    end
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(user_params)
      redirect_to users_path
    else
      flash[:alert] = "Something went wrong! Please try again!"
      render action: :edit
    end
  end

  private

  def user_params
    params.permit(:name, :email, :phone_number, :age)
  end
end