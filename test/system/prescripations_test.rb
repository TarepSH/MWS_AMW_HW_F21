require "application_system_test_case"

class PrescripationsTest < ApplicationSystemTestCase
  setup do
    @prescripation = prescripations(:one)
  end

  test "visiting the index" do
    visit prescripations_url
    assert_selector "h1", text: "Prescripations"
  end

  test "creating a Prescripation" do
    visit prescripations_url
    click_on "New Prescripation"

    fill_in "Dateofpresc", with: @prescripation.dateofpresc
    fill_in "Drug", with: @prescripation.drug_id
    fill_in "Patient", with: @prescripation.patient_id
    fill_in "Pharmacist", with: @prescripation.pharmacist_id
    click_on "Create Prescripation"

    assert_text "Prescripation was successfully created"
    click_on "Back"
  end

  test "updating a Prescripation" do
    visit prescripations_url
    click_on "Edit", match: :first

    fill_in "Dateofpresc", with: @prescripation.dateofpresc
    fill_in "Drug", with: @prescripation.drug_id
    fill_in "Patient", with: @prescripation.patient_id
    fill_in "Pharmacist", with: @prescripation.pharmacist_id
    click_on "Update Prescripation"

    assert_text "Prescripation was successfully updated"
    click_on "Back"
  end

  test "destroying a Prescripation" do
    visit prescripations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Prescripation was successfully destroyed"
  end
end
