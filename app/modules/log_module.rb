module LogModule
  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !current_user.nil?
  end

  def require_login
    unless logged_in?
      flash[:error] = "You must be logged in to access this section"
      redirect_to log_in_url
    end
  end

  def validate_owner
    user_id = params[:user_id].to_i

    if user_id != current_user.id
      flash[:error] = "You cannot access another user's information"
      redirect_to log_in_url
    end
  end
end
