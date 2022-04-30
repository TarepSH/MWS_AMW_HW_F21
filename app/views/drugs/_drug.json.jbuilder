json.extract! drug, :id, :name, :composition, :price, :created_at, :updated_at
json.url drug_url(drug, format: :json)
