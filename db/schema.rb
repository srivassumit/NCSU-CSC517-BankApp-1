# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20170219081503) do

  create_table "accounts", force: :cascade do |t|
    t.string   "acNum"
    t.string   "status"
    t.decimal  "balance",    precision: 7, scale: 2
    t.integer  "user_id"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.index ["user_id"], name: "index_accounts_on_user_id"
=======
ActiveRecord::Schema.define(version: 20170219190740) do

  create_table "Users", force: :cascade do |t|
    t.string   "name"
    t.string   "password"
    t.string   "email"
    t.string   "user_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "accounts", force: :cascade do |t|
    t.integer  "account_number"
    t.string   "status"
    t.decimal  "balance",        default: "0.0"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "accounts_users", force: :cascade do |t|
    t.integer  "account_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_accounts_users_on_account_id"
    t.index ["user_id"], name: "index_accounts_users_on_user_id"
>>>>>>> ec6af02ef9eb1c857073813e97bee937977ef9a2
  end

  create_table "friends", force: :cascade do |t|
    t.integer  "user1_id"
    t.integer  "user2_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user1_id"], name: "index_friends_on_user1_id"
    t.index ["user2_id"], name: "index_friends_on_user2_id"
  end

  create_table "transactions", force: :cascade do |t|
    t.string   "txn_type"
    t.decimal  "amount",          precision: 7, scale: 2
    t.integer  "form_account_id"
    t.integer  "to_account_id"
    t.datetime "start_date"
    t.datetime "effective_date"
    t.string   "status"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.index ["form_account_id"], name: "index_transactions_on_form_account_id"
    t.index ["to_account_id"], name: "index_transactions_on_to_account_id"
  end

<<<<<<< HEAD
  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.boolean  "isAdmin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

=======
>>>>>>> ec6af02ef9eb1c857073813e97bee937977ef9a2
end
