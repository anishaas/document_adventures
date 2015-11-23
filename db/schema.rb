# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151123185352) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "experiences", force: :cascade do |t|
    t.string  "title"
    t.string  "description"
    t.integer "user_id"
  end

  add_index "experiences", ["user_id"], name: "index_experiences_on_user_id", using: :btree

  create_table "images", force: :cascade do |t|
    t.string  "image_url"
    t.integer "media_board_id"
  end

  add_index "images", ["media_board_id"], name: "index_images_on_media_board_id", using: :btree

  create_table "media_boards", force: :cascade do |t|
    t.integer  "experience_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "media_boards", ["experience_id"], name: "index_media_boards_on_experience_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name",      null: false
    t.string   "last_name",       null: false
    t.string   "username",        null: false
    t.string   "email"
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "videos", force: :cascade do |t|
    t.string  "video_url"
    t.integer "media_board_id"
  end

  add_index "videos", ["media_board_id"], name: "index_videos_on_media_board_id", using: :btree

  add_foreign_key "experiences", "users"
  add_foreign_key "images", "media_boards"
  add_foreign_key "media_boards", "experiences"
  add_foreign_key "videos", "media_boards"
end
