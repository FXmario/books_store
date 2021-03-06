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

ActiveRecord::Schema[7.0].define(version: 2022_06_25_084907) do
  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.bigint "noisbn"
    t.string "writer"
    t.text "description"
    t.string "publisher"
    t.integer "year"
    t.integer "stock"
    t.integer "price"
    t.integer "selling_price"
    t.float "ppn"
    t.float "discount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cashiers", force: :cascade do |t|
    t.string "name"
    t.string "cashier_address"
    t.integer "phone"
    t.string "status"
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.index ["username"], name: "index_cashiers_on_username", unique: true
  end

  create_table "distributors", force: :cascade do |t|
    t.string "distributor_name"
    t.string "address"
    t.string "telephone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sales", force: :cascade do |t|
    t.integer "book_id", null: false
    t.integer "cashier_id", null: false
    t.integer "quantity"
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "total"
    t.index ["book_id"], name: "index_sales_on_book_id"
    t.index ["cashier_id"], name: "index_sales_on_cashier_id"
  end

  create_table "supplies", force: :cascade do |t|
    t.integer "book_id", null: false
    t.integer "distributor_id", null: false
    t.integer "amount"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_supplies_on_book_id"
    t.index ["distributor_id"], name: "index_supplies_on_distributor_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "sales", "books"
  add_foreign_key "sales", "cashiers"
  add_foreign_key "supplies", "books"
  add_foreign_key "supplies", "distributors"
end
