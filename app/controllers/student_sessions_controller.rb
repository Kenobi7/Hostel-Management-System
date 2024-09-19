class StudentSessionsController < ApplicationController
  layout "login"

  def new
  end

  def create
    student = Student.find_by(Rollno: params[:Rollno])
    if student.present? && student.authenticate(params[:password])
      session[:student_id] = student.id
      redirect_to student_dashboard_path, flash: { info: "Signed in successfully!" }
    else
      flash[:danger] = "Invalid username or password"
      render :new
    end
  end

  def destroy
    session[:student_id] = nil
    redirect_to root_path, flash: { info: "Logged out!" }
  end

  private

  def signin_params
  end
end

