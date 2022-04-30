require "application_system_test_case"

class DoctorVisitsTest < ApplicationSystemTestCase
  setup do
    @doctor_visit = doctor_visits(:one)
  end

  test "visiting the index" do
    visit doctor_visits_url
    assert_selector "h1", text: "Doctor Visits"
  end

  test "creating a Doctor visit" do
    visit doctor_visits_url
    click_on "New Doctor Visit"

    fill_in "Dateofvisit", with: @doctor_visit.dateofvisit
    fill_in "Disease", with: @doctor_visit.disease
    fill_in "Doctor", with: @doctor_visit.doctor_id
    fill_in "Fee", with: @doctor_visit.fee
    fill_in "Patient", with: @doctor_visit.patient_id
    click_on "Create Doctor visit"

    assert_text "Doctor visit was successfully created"
    click_on "Back"
  end

  test "updating a Doctor visit" do
    visit doctor_visits_url
    click_on "Edit", match: :first

    fill_in "Dateofvisit", with: @doctor_visit.dateofvisit
    fill_in "Disease", with: @doctor_visit.disease
    fill_in "Doctor", with: @doctor_visit.doctor_id
    fill_in "Fee", with: @doctor_visit.fee
    fill_in "Patient", with: @doctor_visit.patient_id
    click_on "Update Doctor visit"

    assert_text "Doctor visit was successfully updated"
    click_on "Back"
  end

  test "destroying a Doctor visit" do
    visit doctor_visits_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Doctor visit was successfully destroyed"
  end
end
