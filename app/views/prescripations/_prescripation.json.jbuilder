json.extract! prescripation, :id, :pharmacist_id, :patient_id, :drug_id, :dateofpresc, :created_at, :updated_at
json.url prescripation_url(prescripation, format: :json)
