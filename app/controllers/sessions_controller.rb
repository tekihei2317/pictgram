class SessionsController < ApplicationController
  def new
  end

  def create
    # binding.pry
    user=User.find_by(email: params[:session][:email])
    if user&&user.authenticate(params[:session][:password])
      log_in user
      redirect_to root_path, success: 'ログインしました'
    else
      flash.now[:danger]='ログインに失敗しました'
      render :new
    end
  end

  def destroy
    log_out
    redirect_to root_path, info: 'ログアウトしました'
  end

  private

  def log_in(user)
    session[:user_id]=user.id
  end

  def log_out
    reset_session
    @current_user=nil
  end
end