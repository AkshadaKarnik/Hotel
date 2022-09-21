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

ActiveRecord::Schema[7.0].define(version: 2022_09_21_181132) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "branches", force: :cascade do |t|
    t.string "speciality"
    t.string "address"
    t.string "email"
    t.string "contact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "branches_customers", id: false, force: :cascade do |t|
    t.bigint "branch_id"
    t.bigint "customer_id"
    t.index ["branch_id"], name: "index_branches_customers_on_branch_id"
    t.index ["customer_id"], name: "index_branches_customers_on_customer_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.string "contact"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers_dishes", id: false, force: :cascade do |t|
    t.bigint "customer_id"
    t.bigint "dish_id"
    t.index ["customer_id"], name: "index_customers_dishes_on_customer_id"
    t.index ["dish_id"], name: "index_customers_dishes_on_dish_id"
  end

  create_table "dishes", force: :cascade do |t|
    t.string "type"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hotels", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "email"
    t.string "contact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "staffs", force: :cascade do |t|
    t.string "type"
    t.integer "size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
