require "application_system_test_case"

class PharmacistsTest < ApplicationSystemTestCase
  setup do
    @pharmacist = pharmacists(:one)
  end

  test "visiting the index" do
    visit pharmacists_url
    assert_selector "h1", text: "Pharmacists"
  end

  test "creating a Pharmacist" do
    visit pharmacists_url
    click_on "New Pharmacist"

    fill_in "Address", with: @pharmacist.address
    check "Isactive" if @pharmacist.isactive
    fill_in "Name", with: @pharmacist.name
    fill_in "Phone", with: @pharmacist.phone
    click_on "Create Pharmacist"

    assert_text "Pharmacist was successfully created"
    click_on "Back"
  end

  test "updating a Pharmacist" do
    visit pharmacists_url
    click_on "Edit", match: :first

    fill_in "Address", with: @pharmacist.address
    check "Isactive" if @pharmacist.isactive
    fill_in "Name", with: @pharmacist.name
    fill_in "Phone", with: @pharmacist.phone
    click_on "Update Pharmacist"

    assert_text "Pharmacist was successfully updated"
    click_on "Back"
  end

  test "destroying a Pharmacist" do
    visit pharmacists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pharmacist was successfully destroyed"
  end
end
