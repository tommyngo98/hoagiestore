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

ActiveRecord::Schema.define(version: 20190203224324) do

  create_table "breads", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string "commenter"
    t.text "body"
    t.integer "hoagie_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hoagie_id"], name: "index_comments_on_hoagie_id"
  end

  create_table "hoagies", force: :cascade do |t|
    t.text "ingredients"
    t.text "size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "bread_id"
    t.string "bread"
    t.index ["bread_id"], name: "index_hoagies_on_bread_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.float "price"
    t.string "billingmethod"
    t.string "deliveryaddress"
    t.boolean "paid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sauces", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "selfies", force: :cascade do |t|
    t.string "title"
    t.text "caption"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
