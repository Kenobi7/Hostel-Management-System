Rails.application.routes.draw do
  resources :fees
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
  get "/student/register", to: "student_registration#new", as: "student_register"
  post "/student/register", to: "student_registration#create"

  get "/student/login", to: "student_sessions#new", as: "student_login"
  post "/student/login", to: "student_sessions#create"
  get "/student/checkshostelstatus", to: "students#new", as: "student_hostelstatus"
  post "/student/checkshostelstatus", to: "students#showstatus"

  get "/student/logout", to: "student_sessions#destroy", as: "student_logout"

  get "/student/raiseComplaint", to: "complaints#new", as: "student_raisecomplaint"
  post "/student/raiseComplaint", to: "complaints#create"

  get "/warden/register", to: "warden_registrations#new", as: "warden_register"
  post "/warden/register", to: "warden_registrations#create"

  get "/warden/login", to: "warden_sessions#new", as: "warden_login"
  post "/warden/login", to: "warden_sessions#create"
  get "/warden/logout", to: "warden_sessions#destroy", as: "warden_logout"

  get "/student/dashboard", to: "students#index", as: "student_dashboard"
  get "/warden/dashboard", to: "wardens#index", as: "warden_dashboard"

  get "warden/addHostels", to:"hostels#new", as: "warden_addhostel"
  post "/warden/addHostels", to: "hostels#create"
  get "/warden/seeHostels", to: "hostels#show", as: "warden_seehostels"

  get "warden/addMess", to:"mess#new", as: "warden_addmess"
  post "/warden/addMess", to: "mess#create"
  get "/warden/seeMess", to: "mess#show", as: "warden_seemess"

  get "/warden/viewComplaint", to: "complaints#index", as: "warden_viewcomplaints"
  get "/student/payfee", to: "students#newfee", as: "student_fee"
  post "/student/payfee", to: "students#payfee"

  get "/fees/:id/update_fee(.:format)" , to: "fees#update_fee", as: "fee_paid"

  resources :hostel_bookings
  resources :mess_bookings


end
