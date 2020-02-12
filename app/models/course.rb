class Course < ApplicationRecord
  # add many to many relation to subjects
  has_many :parts
  has_many :subjects, through: :parts
end
