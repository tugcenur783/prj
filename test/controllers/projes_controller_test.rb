require 'test_helper'

class ProjesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @proje = projes(:one)
  end

  test "should get index" do
    get projes_url
    assert_response :success
  end

  test "should get new" do
    get new_proje_url
    assert_response :success
  end

  test "should create proje" do
    assert_difference('Proje.count') do
      post projes_url, params: { proje: { marka: @proje.marka, urun: @proje.urun } }
    end

    assert_redirected_to proje_url(Proje.last)
  end

  test "should show proje" do
    get proje_url(@proje)
    assert_response :success
  end

  test "should get edit" do
    get edit_proje_url(@proje)
    assert_response :success
  end

  test "should update proje" do
    patch proje_url(@proje), params: { proje: { marka: @proje.marka, urun: @proje.urun } }
    assert_redirected_to proje_url(@proje)
  end

  test "should destroy proje" do
    assert_difference('Proje.count', -1) do
      delete proje_url(@proje)
    end

    assert_redirected_to projes_url
  end
end
