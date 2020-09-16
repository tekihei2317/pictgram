class UsersController < ApplicationController
  def new
    @user=User.new
  end

  def create
    # binding.pry

    name=params[:user][:name]
    email=params[:user][:email]
    @user=User.new(name: name, email: email)

    if @user.save
      redirect_to root_path
    else
      render :new
    end
  end
end
