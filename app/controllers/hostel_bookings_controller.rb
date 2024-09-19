class HostelBookingsController < ApplicationController
  def index
    @bookings = HostelBooking.all
  end

  def show
    @booking = HostelBooking.find(params[:id])
  end

  def new
    @booking = HostelBooking.new
  end

  def create
    @booking = HostelBooking.new(hostel_params)

    if @booking.save
      redirect_to student_dashboard_path, flash: { success: "Request made successfully" }
    else
      render :new
    end
  end

  def edit
    @booking = HostelBooking.find(params[:id])
  end

  def update
    @booking = HostelBooking.find(params[:id])
    @hos= Hostel.find_by(name:@booking.hostel_name)
    @hos.decrement(:available_rooms)
    @hos.save!

    if @booking.update(hostel_params)
      redirect_to hostel_bookings_path 
    else
      render :edit, status: :unprocessable_entity
    end
  end


  

  private
    def hostel_params
      params.require(:hostel_booking).permit(:rollno, :hostel_name, :start_date, :end_date , :room_no, :status)
    end
end