class UsersController < ApplicationController
  def login_form
  end

  def login
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      log_in @user
      redirect_to tasks_path, notice: "ログインしました！"
    else
      @message = "ログインできませんでした、やり直してください。"
      render :login_form
    end
  end

  def logout
    log_out
    redirect_to login_users_path, alert: "ログアウトしました"
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      redirect_to tasks_path, notice: "ログインしました！"
    else
      @message = "記入漏れがあります、確認してください。"
      render :new
    end
  end

  def new
    @user = User.new
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password)
    end
end
