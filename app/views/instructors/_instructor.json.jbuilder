json.extract! instructor, :id, :instructor_id, :first, :middle, :last, :email, :comment, :created_at, :updated_at
json.url instructor_url(instructor, format: :json)
