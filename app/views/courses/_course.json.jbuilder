json.extract! course, :id, :name, :credit, :description, :created_at, :updated_at
json.url course_url(course, format: :json)
