require 'test_helper'

class SnipersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sniper = snipers(:one)
  end

  test "should get index" do
    get snipers_url
    assert_response :success
  end

  test "should get new" do
    get new_sniper_url
    assert_response :success
  end

  test "should create sniper" do
    assert_difference('Sniper.count') do
      post snipers_url, params: { sniper: { contents: @sniper.contents, language: @sniper.language, title: @sniper.title } }
    end

    assert_redirected_to sniper_url(Sniper.last)
  end

  test "should show sniper" do
    get sniper_url(@sniper)
    assert_response :success
  end

  test "should get edit" do
    get edit_sniper_url(@sniper)
    assert_response :success
  end

  test "should update sniper" do
    patch sniper_url(@sniper), params: { sniper: { contents: @sniper.contents, language: @sniper.language, title: @sniper.title } }
    assert_redirected_to sniper_url(@sniper)
  end

  test "should destroy sniper" do
    assert_difference('Sniper.count', -1) do
      delete sniper_url(@sniper)
    end

    assert_redirected_to snipers_url
  end
end
