require 'test_helper'

class PrescripationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prescripation = prescripations(:one)
  end

  test "should get index" do
    get prescripations_url
    assert_response :success
  end

  test "should get new" do
    get new_prescripation_url
    assert_response :success
  end

  test "should create prescripation" do
    assert_difference('Prescripation.count') do
      post prescripations_url, params: { prescripation: { dateofpresc: @prescripation.dateofpresc, drug_id: @prescripation.drug_id, patient_id: @prescripation.patient_id, pharmacist_id: @prescripation.pharmacist_id } }
    end

    assert_redirected_to prescripation_url(Prescripation.last)
  end

  test "should show prescripation" do
    get prescripation_url(@prescripation)
    assert_response :success
  end

  test "should get edit" do
    get edit_prescripation_url(@prescripation)
    assert_response :success
  end

  test "should update prescripation" do
    patch prescripation_url(@prescripation), params: { prescripation: { dateofpresc: @prescripation.dateofpresc, drug_id: @prescripation.drug_id, patient_id: @prescripation.patient_id, pharmacist_id: @prescripation.pharmacist_id } }
    assert_redirected_to prescripation_url(@prescripation)
  end

  test "should destroy prescripation" do
    assert_difference('Prescripation.count', -1) do
      delete prescripation_url(@prescripation)
    end

    assert_redirected_to prescripations_url
  end
end
