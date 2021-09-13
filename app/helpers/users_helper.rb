module UsersHelper
  def current_user
    if session[:user_id]
      User.find_by(id: session[:user_id])
    end
  end

  def log_in(user)
    session[:user_id] = user.id
  end

  def logged_in?
    current_user.present?
  end

  def log_out
    session.delete(:user_id)
  end

  private
    def redirect_login_page
      if !logged_in?
        redirect_to login_users_path, alert: "ログインしてください！"
      end
    end
end
