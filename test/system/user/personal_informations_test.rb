require "application_system_test_case"

class User::PersonalInformationsTest < ApplicationSystemTestCase
  setup do
    @user_personal_information = user_personal_informations(:one)
  end

  test "visiting the index" do
    visit user_personal_informations_url
    assert_selector "h1", text: "User/Personal Informations"
  end

  test "creating a Personal information" do
    visit user_personal_informations_url
    click_on "New User/Personal Information"

    fill_in "Address", with: @user_personal_information.address
    fill_in "Real name", with: @user_personal_information.real_name
    fill_in "User", with: @user_personal_information.user_id
    click_on "Create Personal information"

    assert_text "Personal information was successfully created"
    click_on "Back"
  end

  test "updating a Personal information" do
    visit user_personal_informations_url
    click_on "Edit", match: :first

    fill_in "Address", with: @user_personal_information.address
    fill_in "Real name", with: @user_personal_information.real_name
    fill_in "User", with: @user_personal_information.user_id
    click_on "Update Personal information"

    assert_text "Personal information was successfully updated"
    click_on "Back"
  end

  test "destroying a Personal information" do
    visit user_personal_informations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Personal information was successfully destroyed"
  end
end
