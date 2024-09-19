class WardenRegistrationsController < ApplicationController
  layout "registration"

  def new
    @warden = Warden.new
  end

  def create
    @warden = Warden.new(user_params)
    if @warden.save
      session[:warden_id] = @warden.id
      redirect_to warden_dashboard_path, flash: { success: "Account created successfully" }
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:warden).permit(:name, :email, :username,  :gender, :mobileno, :password, :password_confirmation)
  end
end
