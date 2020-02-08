json.extract! course, :id, :course_id, :code, :name, :subjects, :credits, :independent_study, :description, :requirements, :term, :continuity_id, :comment, :created_at, :updated_at
json.url course_url(course, format: :json)
