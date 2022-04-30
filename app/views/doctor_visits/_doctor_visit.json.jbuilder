json.extract! doctor_visit, :id, :doctor_id, :patient_id, :disease, :fee, :dateofvisit, :created_at, :updated_at
json.url doctor_visit_url(doctor_visit, format: :json)
