require 'test_helper'

class BeercoloursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @beercolour = beercolours(:one)
  end

  test "should get index" do
    get beercolours_url
    assert_response :success
  end

  test "should get new" do
    get new_beercolour_url
    assert_response :success
  end

  test "should create beercolour" do
    assert_difference('Beercolour.count') do
      post beercolours_url, params: { beercolour: { name: @beercolour.name } }
    end

    assert_redirected_to beercolour_url(Beercolour.last)
  end

  test "should show beercolour" do
    get beercolour_url(@beercolour)
    assert_response :success
  end

  test "should get edit" do
    get edit_beercolour_url(@beercolour)
    assert_response :success
  end

  test "should update beercolour" do
    patch beercolour_url(@beercolour), params: { beercolour: { name: @beercolour.name } }
    assert_redirected_to beercolour_url(@beercolour)
  end

  test "should destroy beercolour" do
    assert_difference('Beercolour.count', -1) do
      delete beercolour_url(@beercolour)
    end

    assert_redirected_to beercolours_url
  end
end
