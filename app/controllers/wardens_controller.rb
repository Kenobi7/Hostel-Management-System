class WardensController < ApplicationController
  before_action :require_warden_signed_in

  layout "warden"
  def index
    @hostel=Hostel.all
    @mess=Mess.all
  end
end
