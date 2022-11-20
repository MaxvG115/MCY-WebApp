json.extract! student_status, :id, :status_name, :created_at, :updated_at
json.url student_status_url(student_status, format: :json)
