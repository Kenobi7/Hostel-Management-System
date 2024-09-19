class ComplaintsController < ApplicationController

  def new
    @complaint=Complaint.new
  end
  def create
    @complaint = Complaint.new(complaint_params)
    if @complaint.save
      redirect_to student_dashboard_path, flash: { success: "complaint raised  successfully" }
    else
      render :new
    end
  end

  def index
    @complaint=Complaint.all
  end



  private

  def complaint_params
    params.require(:complaint).permit(:rollno, :description)
  end
end