class SessionsController < ActionController::Base
  def new

  end

  def create
    if(@coach = Coach.find_by(email: params[:email]).try(:authenticate, params[:password]))
      session[:user_id] = nil
      redirect_to @coach
    else
      redirect_to('/login')
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end
end