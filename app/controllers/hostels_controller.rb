class HostelsController < ApplicationController
    layout "warden"
  def new
    @hostel=Hostel.new
  end
  def create
    @hostel = Hostel.new(hostel_params)
    if @hostel.save
      redirect_to warden_dashboard_path, flash: { success: "Hostel added  successfully" }
    else
      render :new
    end
  end
  
  private

  def hostel_params
    params.require(:hostel).permit(:name, :mobileno, :hostel_id, :address, :no_of_rooms, :available_rooms)
  end
end
