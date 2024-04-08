json.extract! personel, :id, :name, :first_name, :last_name, :date_of_birth, :phone, :role, :created_at, :updated_at
json.url personel_url(personel, format: :json)
