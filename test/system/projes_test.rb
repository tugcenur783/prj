require "application_system_test_case"

class ProjesTest < ApplicationSystemTestCase
  setup do
    @proje = projes(:one)
  end

  test "visiting the index" do
    visit projes_url
    assert_selector "h1", text: "Projes"
  end

  test "creating a Proje" do
    visit projes_url
    click_on "New Proje"

    fill_in "Marka", with: @proje.marka
    fill_in "Urun", with: @proje.urun
    click_on "Create Proje"

    assert_text "Proje was successfully created"
    click_on "Back"
  end

  test "updating a Proje" do
    visit projes_url
    click_on "Edit", match: :first

    fill_in "Marka", with: @proje.marka
    fill_in "Urun", with: @proje.urun
    click_on "Update Proje"

    assert_text "Proje was successfully updated"
    click_on "Back"
  end

  test "destroying a Proje" do
    visit projes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Proje was successfully destroyed"
  end
end
