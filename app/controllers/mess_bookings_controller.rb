class MessBookingsController < ApplicationController
    def index
        @bookings = MessBooking.all
      end
    
      def show
        @booking = MessBooking.find(params[:id])
      end
    
      def new
        @book = MessBooking.new
      end
    
      def create
        @book = MessBooking.new(mess_params)
    
        if @book.save
          redirect_to student_dashboard_path, flash: { success: "Request made successfully" }
        else
          render :new
        end
      end
    
      def edit
        @booking = MessBooking.find(params[:id])
      end
    
      def update
        @booking = MessBooking.find(params[:id])
        @hos= Mess.find_by(name:@booking.mess_name)
        @hos.decrement(:available)
        @hos.save!
    
        if @booking.update(mess_params)
          redirect_to hostel_bookings_path 
        else
          render :edit, status: :unprocessable_entity
        end
      end
    
    
      
    
      private
        def mess_params
          params.require(:mess_booking).permit(:rollno, :mess_name, :start_date, :end_date ,:status)
        end
    end
