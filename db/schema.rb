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

ActiveRecord::Schema.define(version: 20170420040929) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "experiments", force: :cascade do |t|
    t.string   "title",                null: false
    t.integer  "author_id",            null: false
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.text     "abstract"
    t.text     "introduction"
    t.text     "materials"
    t.text     "results"
    t.text     "discussion"
    t.text     "conclusion"
    t.text     "supporting_info"
    t.text     "acknowledgments"
    t.text     "references"
    t.text     "author_contributions"
  end

  create_table "experiments_staff", force: :cascade do |t|
    t.integer "staff_id"
    t.integer "experiment_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",            null: false
    t.string   "email",           null: false
    t.string   "password_digest"
    t.integer  "role_id",         null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end