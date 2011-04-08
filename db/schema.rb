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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110317055936) do

  create_table "clickers", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "question_text"
    t.string   "option1"
    t.string   "option2"
    t.string   "option3"
    t.string   "option4"
    t.integer  "option1_count",  :default => 0
    t.integer  "option2_count",  :default => 0
    t.integer  "option3_count",  :default => 0
    t.integer  "option4_count",  :default => 0
    t.integer  "correct_option"
  end

end
