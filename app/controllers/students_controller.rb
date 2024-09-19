class StudentsController < ApplicationController
  before_action :require_student_signed_in

  layout "student"
  def index
    @hostel=Hostel.all
    @mess=Mess.all
  end
  
  def new
  end

  def newfee
  end
  

  def showstatus
    @host= HostelBooking.find_by(rollno: params[:rollno])
    @mess= MessBooking.find_by(rollno: params[:rollno])
  end 

  def payfee
    @host= Fee.find_by(rollno: params[:rollno])

  end 

end
