class Subject < ApplicationRecord
  # add many to many relation to courses
  has_many :parts
  has_many :courses, through: :parts
end
