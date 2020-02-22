class Course < ApplicationRecord
  # add many to many relation to subjects
  has_many :parts
  has_many :subjects, through: :parts

  has_many :enrollments
  has_many :users, through: :enrollments
end
