class SessionsController < ApplicationController
  def new
  end

  def create
    binding.pry
    user=User.find_by(email: session_params[:email])
    if user&&user.authenticate(session_params[:password])
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
  
  def session_params
    params.require(:session).permit(:email, :password)
  end

  def log_in(user)
    session[:user_id]=user.id
  end

  def log_out
    reset_session
    @current_user=nil
  end
end