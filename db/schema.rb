# frozen_string_literal: true

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

ActiveRecord::Schema[7.0].define(version: 20_230_201_120_517) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'authors', force: :cascade do |t|
    t.string 'first_name'
    t.string 'last_name'
    t.string 'date_of_birth'
    t.string 'email'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'place'
  end

  create_table 'books', force: :cascade do |t|
    t.string 'name'
    t.decimal 'price'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'language'
    t.bigint 'author_id'
    t.index ['author_id'], name: 'index_books_on_author_id'
  end

  create_table 'faculties', force: :cascade do |t|
    t.string 'first_name'
    t.string 'last_name'
    t.integer 'phone_number'
    t.string 'email_id'
    t.date 'dob'
    t.string 'designation'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'images', force: :cascade do |t|
    t.string 'imageable_type', null: false
    t.bigint 'imageable_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index %w[imageable_type imageable_id], name: 'index_images_on_imageable'
  end

  create_table 'products', force: :cascade do |t|
    t.string 'name'
    t.text 'description'
    t.integer 'cost'
    t.string 'status'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'students', force: :cascade do |t|
    t.string 'first_name'
    t.string 'last_name'
    t.date 'dob'
    t.string 'department'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  add_foreign_key 'books', 'authors'
end
