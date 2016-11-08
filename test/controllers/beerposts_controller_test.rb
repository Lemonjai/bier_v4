require 'test_helper'

class BeerpostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @beerpost = beerposts(:one)
  end

  test "should get index" do
    get beerposts_url
    assert_response :success
  end

  test "should get new" do
    get new_beerpost_url
    assert_response :success
  end

  test "should create beerpost" do
    assert_difference('Beerpost.count') do
      post beerposts_url, params: { beerpost: { name: @beerpost.name } }
    end

    assert_redirected_to beerpost_url(Beerpost.last)
  end

  test "should show beerpost" do
    get beerpost_url(@beerpost)
    assert_response :success
  end

  test "should get edit" do
    get edit_beerpost_url(@beerpost)
    assert_response :success
  end

  test "should update beerpost" do
    patch beerpost_url(@beerpost), params: { beerpost: { name: @beerpost.name } }
    assert_redirected_to beerpost_url(@beerpost)
  end

  test "should destroy beerpost" do
    assert_difference('Beerpost.count', -1) do
      delete beerpost_url(@beerpost)
    end

    assert_redirected_to beerposts_url
  end
end
