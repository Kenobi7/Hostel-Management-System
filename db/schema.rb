# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_11_28_200122) do
  create_table "complaints", force: :cascade do |t|
    t.string "rollno"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fees", force: :cascade do |t|
    t.string "rollno"
    t.integer "amount"
    t.string "status", default: "Not paid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hostel_bookings", force: :cascade do |t|
    t.string "rollno"
    t.string "hostel_name"
    t.string "start_date"
    t.string "end_date"
    t.string "status", default: "Pending"
    t.integer "room_no"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hostels", force: :cascade do |t|
    t.string "hostel_id"
    t.string "name"
    t.string "address"
    t.string "mobileno"
    t.integer "no_of_rooms"
    t.integer "available_rooms"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mess_bookings", force: :cascade do |t|
    t.string "rollno"
    t.string "mess_name"
    t.string "start_date"
    t.string "end_date"
    t.string "status", default: "Pending"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messes", force: :cascade do |t|
    t.string "mess_id"
    t.string "name"
    t.string "address"
    t.string "mobileno"
    t.integer "max_capacity"
    t.integer "available"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "Rollno"
    t.string "mobileno"
    t.string "password_digest"
    t.string "email"
    t.string "gender"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wardens", force: :cascade do |t|
    t.string "name"
    t.string "mobileno"
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.string "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
