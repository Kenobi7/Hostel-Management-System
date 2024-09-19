class MessController < ApplicationController
  layout "warden"
  def new
    @mess=Mess.new
  end
  def create
    @mess = Mess.new(mess_params)
    if @mess.save
      redirect_to warden_dashboard_path, flash: { success: "Mess added  successfully" }
    else
      render :new
    end
  end

  private

  def mess_params
    params.require(:mess).permit(:name, :mobileno, :mess_id, :address, :max_capacity, :available)
  end
end