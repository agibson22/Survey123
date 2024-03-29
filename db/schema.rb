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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120115185511) do

  create_table "answers", :force => true do |t|
    t.integer  "question_id"
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "answer_index"
    t.integer  "survey_id"
  end

  create_table "pabs", :force => true do |t|
    t.text     "survey_name"
    t.text     "question_name"
    t.text     "answer_name"
    t.integer  "stem_number"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "stem1_question_a"
    t.integer  "stem1_question_b"
    t.integer  "stem1_question_c"
    t.integer  "stem1_question_d"
    t.integer  "stem1_question_e"
    t.integer  "stem1_question_f"
    t.integer  "stem1_question_g"
    t.integer  "stem1_question_h"
    t.integer  "stem2_question_a"
    t.integer  "stem2_question_b"
    t.integer  "stem2_question_c"
    t.integer  "stem2_question_d"
    t.integer  "stem2_question_e"
    t.integer  "stem2_question_f"
    t.integer  "stem2_question_g"
    t.integer  "stem2_question_h"
    t.integer  "stem3_question_a"
    t.integer  "stem3_question_b"
    t.integer  "stem3_question_c"
    t.integer  "stem3_question_d"
    t.integer  "stem3_question_e"
    t.integer  "stem3_question_f"
    t.integer  "stem3_question_g"
    t.integer  "stem3_question_h"
    t.integer  "stem4_question_a"
    t.integer  "stem4_question_b"
    t.integer  "stem4_question_c"
    t.integer  "stem4_question_d"
    t.integer  "stem4_question_e"
    t.integer  "stem4_question_f"
    t.integer  "stem4_question_g"
    t.integer  "stem4_question_h"
    t.integer  "stem5_question_a"
    t.integer  "stem5_question_b"
    t.integer  "stem5_question_c"
    t.integer  "stem5_question_d"
    t.integer  "stem5_question_e"
    t.integer  "stem5_question_f"
    t.integer  "stem5_question_g"
    t.integer  "stem5_question_h"
    t.integer  "stem6_question_a"
    t.integer  "stem6_question_b"
    t.integer  "stem6_question_c"
    t.integer  "stem6_question_d"
    t.integer  "stem6_question_e"
    t.integer  "stem6_question_f"
    t.integer  "stem6_question_g"
    t.integer  "stem6_question_h"
    t.integer  "stem7_question_a"
    t.integer  "stem7_question_b"
    t.integer  "stem7_question_c"
    t.integer  "stem7_question_d"
    t.integer  "stem7_question_e"
    t.integer  "stem7_question_f"
    t.integer  "stem7_question_g"
    t.integer  "stem7_question_h"
    t.integer  "stem8_question_a"
    t.integer  "stem8_question_b"
    t.integer  "stem8_question_c"
    t.integer  "stem8_question_d"
    t.integer  "stem8_question_e"
    t.integer  "stem8_question_f"
    t.integer  "stem8_question_g"
    t.integer  "stem8_question_h"
    t.integer  "stem9_question_a"
    t.integer  "stem9_question_b"
    t.integer  "stem9_question_c"
    t.integer  "stem9_question_d"
    t.integer  "stem9_question_e"
    t.integer  "stem9_question_f"
    t.integer  "stem9_question_g"
    t.integer  "stem9_question_h"
    t.integer  "stem10_question_a"
    t.integer  "stem10_question_b"
    t.integer  "stem10_question_c"
    t.integer  "stem10_question_d"
    t.integer  "stem10_question_e"
    t.integer  "stem10_question_f"
    t.integer  "stem10_question_g"
    t.integer  "stem10_question_h"
    t.integer  "stem11_question_a"
    t.integer  "stem11_question_b"
    t.integer  "stem11_question_c"
    t.integer  "stem11_question_d"
    t.integer  "stem11_question_e"
    t.integer  "stem11_question_f"
    t.integer  "stem11_question_g"
    t.integer  "stem11_question_h"
    t.integer  "stem12_question_a"
    t.integer  "stem12_question_b"
    t.integer  "stem12_question_c"
    t.integer  "stem12_question_d"
    t.integer  "stem12_question_e"
    t.integer  "stem12_question_f"
    t.integer  "stem12_question_g"
    t.integer  "stem12_question_h"
    t.integer  "stem13_question_a"
    t.integer  "stem13_question_b"
    t.integer  "stem13_question_c"
    t.integer  "stem13_question_d"
    t.integer  "stem13_question_e"
    t.integer  "stem13_question_f"
    t.integer  "stem13_question_g"
    t.integer  "stem13_question_h"
    t.integer  "stem14_question_a"
    t.integer  "stem14_question_b"
    t.integer  "stem14_question_c"
    t.integer  "stem14_question_d"
    t.integer  "stem14_question_e"
    t.integer  "stem14_question_f"
    t.integer  "stem14_question_g"
    t.integer  "stem14_question_h"
    t.integer  "stem15_question_a"
    t.integer  "stem15_question_b"
    t.integer  "stem15_question_c"
    t.integer  "stem15_question_d"
    t.integer  "stem15_question_e"
    t.integer  "stem15_question_f"
    t.integer  "stem15_question_g"
    t.integer  "stem15_question_h"
    t.integer  "stem16_question_a"
    t.integer  "stem16_question_b"
    t.integer  "stem16_question_c"
    t.integer  "stem16_question_d"
    t.integer  "stem16_question_e"
    t.integer  "stem16_question_f"
    t.integer  "stem16_question_g"
    t.integer  "stem16_question_h"
  end

  create_table "questions", :force => true do |t|
    t.integer  "survey_id"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "question_order"
  end

  create_table "responses", :force => true do |t|
    t.integer  "question_id"
    t.integer  "answer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "survey_id"
    t.integer  "stem_id"
  end

  create_table "surveys", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
    t.integer  "user_id"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "encrypted_password"
    t.string   "salt"
    t.string   "auth_token"
    t.boolean  "admin",                  :default => false
    t.string   "password_reset_token"
    t.integer  "unique_id"
    t.datetime "password_reset_sent_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "researcher",             :default => false
  end

end
