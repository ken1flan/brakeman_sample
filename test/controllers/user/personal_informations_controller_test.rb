require 'test_helper'

class User::PersonalInformationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_personal_information = user_personal_informations(:one)
  end

  test "should get index" do
    get user_personal_informations_url
    assert_response :success
  end

  test "should get new" do
    get new_user_personal_information_url
    assert_response :success
  end

  test "should create user_personal_information" do
    assert_difference('User::PersonalInformation.count') do
      post user_personal_informations_url, params: { user_personal_information: { address: @user_personal_information.address, real_name: @user_personal_information.real_name, user_id: @user_personal_information.user_id } }
    end

    assert_redirected_to user_personal_information_url(User::PersonalInformation.last)
  end

  test "should show user_personal_information" do
    get user_personal_information_url(@user_personal_information)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_personal_information_url(@user_personal_information)
    assert_response :success
  end

  test "should update user_personal_information" do
    patch user_personal_information_url(@user_personal_information), params: { user_personal_information: { address: @user_personal_information.address, real_name: @user_personal_information.real_name, user_id: @user_personal_information.user_id } }
    assert_redirected_to user_personal_information_url(@user_personal_information)
  end

  test "should destroy user_personal_information" do
    assert_difference('User::PersonalInformation.count', -1) do
      delete user_personal_information_url(@user_personal_information)
    end

    assert_redirected_to user_personal_informations_url
  end
end
