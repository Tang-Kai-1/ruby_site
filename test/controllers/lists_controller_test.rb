require "test_helper"

class ListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @list = lists(:one)
  end

  test "should get index" do
    get lists_url
    assert_response :success
  end

  test "should get new" do
    get new_list_url
    assert_response :success
  end

  test "should create list" do
    assert_difference('List.count') do
      post lists_url, params: { list: { average: @list.average, country: @list.country, country_code: @list.country_code, income_level: @list.income_level, max: @list.max, min: @list.min, region: @list.region, year_eight: @list.year_eight, year_eighteen: @list.year_eighteen, year_eleven: @list.year_eleven, year_five: @list.year_five, year_fiveteen: @list.year_fiveteen, year_four: @list.year_four, year_fourteen: @list.year_fourteen, year_max: @list.year_max, year_min: @list.year_min, year_nine: @list.year_nine, year_nineteen: @list.year_nineteen, year_one: @list.year_one, year_seven: @list.year_seven, year_seventeen: @list.year_seventeen, year_six: @list.year_six, year_sixteen: @list.year_sixteen, year_ten: @list.year_ten, year_thirteen: @list.year_thirteen, year_thirty: @list.year_thirty, year_three: @list.year_three, year_twelve: @list.year_twelve, year_twenty: @list.year_twenty, year_twentyeight: @list.year_twentyeight, year_twentyfive: @list.year_twentyfive, year_twentyfour: @list.year_twentyfour, year_twentynine: @list.year_twentynine, year_twentyone: @list.year_twentyone, year_twentyseven: @list.year_twentyseven, year_twentysix: @list.year_twentysix, year_twentythree: @list.year_twentythree, year_twentytwo: @list.year_twentytwo, year_two: @list.year_two } }
    end

    assert_redirected_to list_url(List.last)
  end

  test "should show list" do
    get list_url(@list)
    assert_response :success
  end

  test "should get edit" do
    get edit_list_url(@list)
    assert_response :success
  end

  test "should update list" do
    patch list_url(@list), params: { list: { average: @list.average, country: @list.country, country_code: @list.country_code, income_level: @list.income_level, max: @list.max, min: @list.min, region: @list.region, year_eight: @list.year_eight, year_eighteen: @list.year_eighteen, year_eleven: @list.year_eleven, year_five: @list.year_five, year_fiveteen: @list.year_fiveteen, year_four: @list.year_four, year_fourteen: @list.year_fourteen, year_max: @list.year_max, year_min: @list.year_min, year_nine: @list.year_nine, year_nineteen: @list.year_nineteen, year_one: @list.year_one, year_seven: @list.year_seven, year_seventeen: @list.year_seventeen, year_six: @list.year_six, year_sixteen: @list.year_sixteen, year_ten: @list.year_ten, year_thirteen: @list.year_thirteen, year_thirty: @list.year_thirty, year_three: @list.year_three, year_twelve: @list.year_twelve, year_twenty: @list.year_twenty, year_twentyeight: @list.year_twentyeight, year_twentyfive: @list.year_twentyfive, year_twentyfour: @list.year_twentyfour, year_twentynine: @list.year_twentynine, year_twentyone: @list.year_twentyone, year_twentyseven: @list.year_twentyseven, year_twentysix: @list.year_twentysix, year_twentythree: @list.year_twentythree, year_twentytwo: @list.year_twentytwo, year_two: @list.year_two } }
    assert_redirected_to list_url(@list)
  end

  test "should destroy list" do
    assert_difference('List.count', -1) do
      delete list_url(@list)
    end

    assert_redirected_to lists_url
  end
end
