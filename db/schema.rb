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

ActiveRecord::Schema.define(version: 20181124053719) do

  create_table "angry_posts", force: :cascade do |t|
    t.integer "post_id"
    t.text "why"
    t.text "whom"
    t.text "how"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_angry_posts_on_post_id"
  end

  create_table "happy_posts", force: :cascade do |t|
    t.integer "post_id"
    t.text "play"
    t.text "can"
    t.text "want"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_happy_posts_on_post_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "post_type"
    t.string "weather"
    t.date "day"
    t.string "image"
    t.boolean "open"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sad_posts", force: :cascade do |t|
    t.integer "post_id"
    t.text "whatsup"
    t.text "wanted"
    t.text "good"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_sad_posts_on_post_id"
  end

end
