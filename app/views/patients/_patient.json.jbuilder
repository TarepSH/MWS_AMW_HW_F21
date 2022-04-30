json.extract! patient, :id, :insurancenumber, :name, :quota, :discountrate, :docotrvisit, :paionstartdate, :paionenddate, :created_at, :updated_at
json.url patient_url(patient, format: :json)
