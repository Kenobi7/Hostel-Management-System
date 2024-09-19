class StudentRegistrationController < ApplicationController
  layout "registration"
  def new
    @student=Student.new
  end

  def create
    @student=Student.new(user_params)
    if @student.save 
      session[:student_id]=@student.id
      redirect_to student_dashboard_path , flash: { success: "Account created successfully" }
    else
      render :new
    end
end
private

def user_params
  params.require(:student).permit(:name, :Rollno, :mobileno, :email, :gender, :address, :password, :password_confirmation)
end
end