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

ActiveRecord::Schema.define(version: 2022_11_02_175221) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "lists", force: :cascade do |t|
    t.string "country"
    t.string "country_code"
    t.string "region"
    t.string "income_level"
    t.float "average"
    t.integer "year_min"
    t.float "min"
    t.integer "year_max"
    t.float "max"
    t.float "year_one"
    t.float "year_two"
    t.float "year_three"
    t.float "year_four"
    t.float "year_five"
    t.float "year_six"
    t.float "year_seven"
    t.float "year_eight"
    t.float "year_nine"
    t.float "year_ten"
    t.float "year_eleven"
    t.float "year_twelve"
    t.float "year_thirteen"
    t.float "year_fourteen"
    t.float "year_fiveteen"
    t.float "year_sixteen"
    t.float "year_seventeen"
    t.float "year_eighteen"
    t.float "year_nineteen"
    t.float "year_twenty"
    t.float "year_twentyone"
    t.float "year_twentytwo"
    t.float "year_twentythree"
    t.float "year_twentyfour"
    t.float "year_twentyfive"
    t.float "year_twentysix"
    t.float "year_twentyseven"
    t.float "year_twentyeight"
    t.float "year_twentynine"
    t.float "year_thirty"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
