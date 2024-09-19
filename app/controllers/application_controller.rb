class ApplicationController < ActionController::Base
  before_action :set_current_student
  before_action :set_current_warden

  def set_current_student
    if session[:student_id]
      Current.student = Student.find_by(id: session[:student_id])
    end
  end

  def set_current_warden
    if session[:warden_id]
      Current.warden = Warden.find_by(id: session[:warden_id])
    end
  end

  def require_student_signed_in
    redirect_to student_login_path, flash: { warning: "You must be signed in to do that!" } if Current.student.nil?
  end

  def require_warden_signed_in
    redirect_to warden_login_path, flash: { warning: "You must be signed in to do that!" } if Current.warden.nil?
  end
end
