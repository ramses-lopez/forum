module ApplicationHelper
  def login_required
    if current_user.nil?
      store_location
      redirect_to new_user_session_path, notice: 'Please log in to continue!'
      false
    end
  end

  def store_location
    session[:return_to] = request.url
  end

  def redirect_back_or_default(default)
    redirect_to(retrieve_and_wipe_return_url || default)
  end

  def retrieve_and_wipe_return_url
    result = session[:return_to]
    session[:return_to] = nil
    result ? result : nil
  end
end
