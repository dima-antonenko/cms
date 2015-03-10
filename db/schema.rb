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

ActiveRecord::Schema.define(version: 20150310012653) do

  create_table "post_categories", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.string   "meta_title"
    t.string   "meta_description"
    t.string   "meta_keywords"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "post_categories", ["meta_description"], name: "index_post_categories_on_meta_description"
  add_index "post_categories", ["meta_keywords"], name: "index_post_categories_on_meta_keywords"
  add_index "post_categories", ["meta_title"], name: "index_post_categories_on_meta_title"
  add_index "post_categories", ["title"], name: "index_post_categories_on_title"

  create_table "posts", force: :cascade do |t|
    t.integer  "post_category_id"
    t.string   "title"
    t.text     "text"
    t.text     "lead"
    t.string   "image"
    t.string   "meta_title"
    t.string   "meta_description"
    t.string   "meta_keywords"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "posts", ["image"], name: "index_posts_on_image"
  add_index "posts", ["lead"], name: "index_posts_on_lead"
  add_index "posts", ["meta_description"], name: "index_posts_on_meta_description"
  add_index "posts", ["meta_keywords"], name: "index_posts_on_meta_keywords"
  add_index "posts", ["meta_title"], name: "index_posts_on_meta_title"
  add_index "posts", ["title"], name: "index_posts_on_title"

  create_table "product_categories", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "meta_title"
    t.string   "meta_description"
    t.string   "meta_keywords"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "product_categories", ["meta_description"], name: "index_product_categories_on_meta_description"
  add_index "product_categories", ["meta_keywords"], name: "index_product_categories_on_meta_keywords"
  add_index "product_categories", ["meta_title"], name: "index_product_categories_on_meta_title"
  add_index "product_categories", ["name"], name: "index_product_categories_on_name"

  create_table "products", force: :cascade do |t|
    t.integer  "product_category_id"
    t.string   "name"
    t.text     "description"
    t.string   "image"
    t.string   "sku"
    t.string   "meta_title"
    t.string   "meta_description"
    t.string   "meta_keywords"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.decimal  "price"
  end

  add_index "products", ["image"], name: "index_products_on_image"
  add_index "products", ["meta_description"], name: "index_products_on_meta_description"
  add_index "products", ["meta_keywords"], name: "index_products_on_meta_keywords"
  add_index "products", ["meta_title"], name: "index_products_on_meta_title"
  add_index "products", ["name"], name: "index_products_on_name"
  add_index "products", ["price"], name: "index_products_on_price"

  create_table "site_variables", force: :cascade do |t|
    t.string   "name"
    t.string   "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "site_variables", ["name"], name: "index_site_variables_on_name"
  add_index "site_variables", ["value"], name: "index_site_variables_on_value"

end
