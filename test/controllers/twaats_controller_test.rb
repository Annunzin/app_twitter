require 'test_helper'

class TwaatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @twaat = twaats(:one)
  end

  test "should get index" do
    get twaats_url
    assert_response :success
  end

  test "should get new" do
    get new_twaat_url
    assert_response :success
  end

  test "should create twaat" do
    assert_difference('Twaat.count') do
      post twaats_url, params: { twaat: { Content: @twaat.Content, img_url: @twaat.img_url } }
    end

    assert_redirected_to twaat_url(Twaat.last)
  end

  test "should show twaat" do
    get twaat_url(@twaat)
    assert_response :success
  end

  test "should get edit" do
    get edit_twaat_url(@twaat)
    assert_response :success
  end

  test "should update twaat" do
    patch twaat_url(@twaat), params: { twaat: { Content: @twaat.Content, img_url: @twaat.img_url } }
    assert_redirected_to twaat_url(@twaat)
  end

  test "should destroy twaat" do
    assert_difference('Twaat.count', -1) do
      delete twaat_url(@twaat)
    end

    assert_redirected_to twaats_url
  end
end
