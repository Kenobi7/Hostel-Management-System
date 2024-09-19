class WardenSessionsController < ApplicationController
  layout "login"

  def new
  end

  def create
    warden = Warden.find_by(username: params[:username])
    if warden.present? && warden.authenticate(params[:password])
      session[:warden_id] = warden.id
      redirect_to warden_dashboard_path, flash: { info: "Signed in successfully!" }
    else
      flash[:danger] = "Invalid username or password"
      render :new
    end
  end

  def destroy
    session[:warden_id] = nil
    redirect_to root_path, flash: { info: "Logged out!" }
  end

  private

  def signin_params
  end
end
