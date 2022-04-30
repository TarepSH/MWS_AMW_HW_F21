require 'test_helper'

class DoctorVisitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @doctor_visit = doctor_visits(:one)
  end

  test "should get index" do
    get doctor_visits_url
    assert_response :success
  end

  test "should get new" do
    get new_doctor_visit_url
    assert_response :success
  end

  test "should create doctor_visit" do
    assert_difference('DoctorVisit.count') do
      post doctor_visits_url, params: { doctor_visit: { dateofvisit: @doctor_visit.dateofvisit, disease: @doctor_visit.disease, doctor_id: @doctor_visit.doctor_id, fee: @doctor_visit.fee, patient_id: @doctor_visit.patient_id } }
    end

    assert_redirected_to doctor_visit_url(DoctorVisit.last)
  end

  test "should show doctor_visit" do
    get doctor_visit_url(@doctor_visit)
    assert_response :success
  end

  test "should get edit" do
    get edit_doctor_visit_url(@doctor_visit)
    assert_response :success
  end

  test "should update doctor_visit" do
    patch doctor_visit_url(@doctor_visit), params: { doctor_visit: { dateofvisit: @doctor_visit.dateofvisit, disease: @doctor_visit.disease, doctor_id: @doctor_visit.doctor_id, fee: @doctor_visit.fee, patient_id: @doctor_visit.patient_id } }
    assert_redirected_to doctor_visit_url(@doctor_visit)
  end

  test "should destroy doctor_visit" do
    assert_difference('DoctorVisit.count', -1) do
      delete doctor_visit_url(@doctor_visit)
    end

    assert_redirected_to doctor_visits_url
  end
end
