class CreateLists < ActiveRecord::Migration[6.1]
  def change
    create_table :lists do |t|
      t.string :country
      t.string :country_code
      t.string :region
      t.string :income_level
      t.float :average
      t.integer :year_min
      t.float :min
      t.integer :year_max
      t.float :max
      t.float :year_one
      t.float :year_two
      t.float :year_three
      t.float :year_four
      t.float :year_five
      t.float :year_six
      t.float :year_seven
      t.float :year_eight
      t.float :year_nine
      t.float :year_ten
      t.float :year_eleven
      t.float :year_twelve
      t.float :year_thirteen
      t.float :year_fourteen
      t.float :year_fiveteen
      t.float :year_sixteen
      t.float :year_seventeen
      t.float :year_eighteen
      t.float :year_nineteen
      t.float :year_twenty
      t.float :year_twentyone
      t.float :year_twentytwo
      t.float :year_twentythree
      t.float :year_twentyfour
      t.float :year_twentyfive
      t.float :year_twentysix
      t.float :year_twentyseven
      t.float :year_twentyeight
      t.float :year_twentynine
      t.float :year_thirty

      t.timestamps
    end
  end
end
