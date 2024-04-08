json.extract! student, :id, :name, :first_name, :last_name, :date_of_birth, :phone, :created_at, :updated_at
json.url student_url(student, format: :json)
