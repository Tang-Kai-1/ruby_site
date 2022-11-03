require "application_system_test_case"

class ListsTest < ApplicationSystemTestCase
  setup do
    @list = lists(:one)
  end

  test "visiting the index" do
    visit lists_url
    assert_selector "h1", text: "Lists"
  end

  test "creating a List" do
    visit lists_url
    click_on "New List"

    fill_in "Average", with: @list.average
    fill_in "Country", with: @list.country
    fill_in "Country code", with: @list.country_code
    fill_in "Income level", with: @list.income_level
    fill_in "Max", with: @list.max
    fill_in "Min", with: @list.min
    fill_in "Region", with: @list.region
    fill_in "Year eight", with: @list.year_eight
    fill_in "Year eighteen", with: @list.year_eighteen
    fill_in "Year eleven", with: @list.year_eleven
    fill_in "Year five", with: @list.year_five
    fill_in "Year fiveteen", with: @list.year_fiveteen
    fill_in "Year four", with: @list.year_four
    fill_in "Year fourteen", with: @list.year_fourteen
    fill_in "Year max", with: @list.year_max
    fill_in "Year min", with: @list.year_min
    fill_in "Year nine", with: @list.year_nine
    fill_in "Year nineteen", with: @list.year_nineteen
    fill_in "Year one", with: @list.year_one
    fill_in "Year seven", with: @list.year_seven
    fill_in "Year seventeen", with: @list.year_seventeen
    fill_in "Year six", with: @list.year_six
    fill_in "Year sixteen", with: @list.year_sixteen
    fill_in "Year ten", with: @list.year_ten
    fill_in "Year thirteen", with: @list.year_thirteen
    fill_in "Year thirty", with: @list.year_thirty
    fill_in "Year three", with: @list.year_three
    fill_in "Year twelve", with: @list.year_twelve
    fill_in "Year twenty", with: @list.year_twenty
    fill_in "Year twentyeight", with: @list.year_twentyeight
    fill_in "Year twentyfive", with: @list.year_twentyfive
    fill_in "Year twentyfour", with: @list.year_twentyfour
    fill_in "Year twentynine", with: @list.year_twentynine
    fill_in "Year twentyone", with: @list.year_twentyone
    fill_in "Year twentyseven", with: @list.year_twentyseven
    fill_in "Year twentysix", with: @list.year_twentysix
    fill_in "Year twentythree", with: @list.year_twentythree
    fill_in "Year twentytwo", with: @list.year_twentytwo
    fill_in "Year two", with: @list.year_two
    click_on "Create List"

    assert_text "List was successfully created"
    click_on "Back"
  end

  test "updating a List" do
    visit lists_url
    click_on "Edit", match: :first

    fill_in "Average", with: @list.average
    fill_in "Country", with: @list.country
    fill_in "Country code", with: @list.country_code
    fill_in "Income level", with: @list.income_level
    fill_in "Max", with: @list.max
    fill_in "Min", with: @list.min
    fill_in "Region", with: @list.region
    fill_in "Year eight", with: @list.year_eight
    fill_in "Year eighteen", with: @list.year_eighteen
    fill_in "Year eleven", with: @list.year_eleven
    fill_in "Year five", with: @list.year_five
    fill_in "Year fiveteen", with: @list.year_fiveteen
    fill_in "Year four", with: @list.year_four
    fill_in "Year fourteen", with: @list.year_fourteen
    fill_in "Year max", with: @list.year_max
    fill_in "Year min", with: @list.year_min
    fill_in "Year nine", with: @list.year_nine
    fill_in "Year nineteen", with: @list.year_nineteen
    fill_in "Year one", with: @list.year_one
    fill_in "Year seven", with: @list.year_seven
    fill_in "Year seventeen", with: @list.year_seventeen
    fill_in "Year six", with: @list.year_six
    fill_in "Year sixteen", with: @list.year_sixteen
    fill_in "Year ten", with: @list.year_ten
    fill_in "Year thirteen", with: @list.year_thirteen
    fill_in "Year thirty", with: @list.year_thirty
    fill_in "Year three", with: @list.year_three
    fill_in "Year twelve", with: @list.year_twelve
    fill_in "Year twenty", with: @list.year_twenty
    fill_in "Year twentyeight", with: @list.year_twentyeight
    fill_in "Year twentyfive", with: @list.year_twentyfive
    fill_in "Year twentyfour", with: @list.year_twentyfour
    fill_in "Year twentynine", with: @list.year_twentynine
    fill_in "Year twentyone", with: @list.year_twentyone
    fill_in "Year twentyseven", with: @list.year_twentyseven
    fill_in "Year twentysix", with: @list.year_twentysix
    fill_in "Year twentythree", with: @list.year_twentythree
    fill_in "Year twentytwo", with: @list.year_twentytwo
    fill_in "Year two", with: @list.year_two
    click_on "Update List"

    assert_text "List was successfully updated"
    click_on "Back"
  end

  test "destroying a List" do
    visit lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "List was successfully destroyed"
  end
end
