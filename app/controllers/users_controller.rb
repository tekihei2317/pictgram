class UsersController < ApplicationController
  def new
    @user=User.new
  end

  def create
    @user=User.new(user_params)
    byebug

    if @user.save
      redirect_to root_path, success: "登録が完了しました(ユーザー名: #{@user.name})"
    else
      flash.now[:danger]='登録に失敗しました'
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
