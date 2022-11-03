# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'roo'
List.destroy_all
data = Roo::Spreadsheet.open(File.extend_path('DataDone.xlsx'))
(2..data.last_row).each do |i|
    @BaseYear = 1985
    @Count = 0
    @MinYear
    @MaxYear
    @MinPollution = 10000000.0
    @MaxPollution = -800.0
    @AverageEm = 0.0
    (5..data.last_column).each do |j|
        entry = data.cell(i,j).to_f
        if(entry != 0)
            @AverageEm += entry
            @Count += 1
            if(entry > @MaxPollution)
                @MaxYear = @BaseYear+j
                @MaxPollution = entry
            end
            if(entry < @MinPollution)
                @MinYear = @BaseYear+j
                @MinPollution=entry
            end
        end
    end
    t = List.new
    t.country = data.cell(i,1).to_s
    t.country_code = data.cell(i,2).to_s
    t.region = data.cell(i,3).to_s
    t.income_level = data.cell(i,4).to_s
    t.average = @AverageEm/@Count
    t.year_min = @MinYear
    t.min = @MinPollution
    t.year_max = @MaxYear
    t.max = @MaxPollution
    t.year_one = data.cell(i,5).to_f
    t.year_two = data.cell(i,6).to_f
    t.year_three = data.cell(i,7).to_f
    t.year_four = data.cell(i,8).to_f
    t.year_five = data.cell(i,9).to_f
    t.year_six = data.cell(i,10).to_f
    t.year_seven = data.cell(i,11).to_f
    t.year_eight = data.cell(i,12).to_f
    t.year_nine = data.cell(i,13).to_f
    t.year_ten = data.cell(i,14).to_f
    t.year_eleven = data.cell(i,15).to_f
    t.year_twelve = data.cell(i,16).to_f
    t.year_thirteen = data.cell(i,17).to_f
    t.year_fourteen = data.cell(i,18).to_f
    t.year_fiveteen = data.cell(i,19).to_f
    t.year_sixteen = data.cell(i,20).to_f
    t.year_seventeen = data.cell(i,21).to_f
    t.year_eighteen = data.cell(i,22).to_f
    t.year_nineteen = data.cell(i,23).to_f
    t.year_twenty = data.cell(i,24).to_f
    t.year_twentyone = data.cell(i,25).to_f
    t.year_twentytwo = data.cell(i,26).to_f
    t.year_twentythree = data.cell(i,27).to_f
    t.year_twentyfour = data.cell(i,28).to_f
    t.year_twentyfive = data.cell(i,29).to_f
    t.year_twentysix = data.cell(i,30).to_f
    t.year_twentyseven = data.cell(i,31).to_f
    t.year_twentyeight = data.cell(i,32).to_f
    t.year_twentynine = data.cell(i,33).to_f
    t.year_thirty = data.cell(i,34).to_f
    t.save
end


