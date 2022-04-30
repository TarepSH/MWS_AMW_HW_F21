json.extract! doctor, :id, :name, :Specialty, :address, :phone, :isactive, :created_at, :updated_at
json.url doctor_url(doctor, format: :json)
