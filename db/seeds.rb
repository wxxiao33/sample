# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# seeding instructors
# delete all data in instructer table
Instructor.delete_all

instructor_file = File.read(File.join("datafile", 'instructor.json'))
instructor_hash = JSON.parse(instructor_file)
instructors = []

# the columns in instructor table
columns = [:instructor_id, :first, :middle, :last, :email, :comment]

instructor_hash.each do |instructor|
  # create a hash containing information of one row of data
  # and push it into a list
  instructors.push({instructor_id: instructor["id"], first: instructor['first'],
                  middle: instructor["middle"], last: instructor['last'],
                  email: instructor["email"], comment: instructor['comment']})
end
# import all the array of hashes by active-import
Instructor.import columns, instructors, validate: false


# Seeding subject, remove all data in subject table
Subject.delete_all

subject_file = File.read(File.join("datafile", 'subject.json'))
subject_hash = JSON.parse(subject_file)
subjects = []

# set the columns in subject table
columns = [:subject_id, :name, :abbreviation, :segments, :term, :comment]

subject_hash.each do |subject|
  # create a hash containing information of one row of data
  # and push it into a list
  subjects.push({subject_id: subject['id'], name:subject['name'], 
                abbreviation: subject['abbreviation'], term: subject["term"],
                segments: subject["segments"].map{ |seg| "#{seg["id"]}: #{seg["name"]}"}.join(" | ") ,
                comment: subject["comment"]})
end
# import all the array of hashes by active-import
Subject.import columns, subjects, validate: false 


# Seeding subject, remove all data in course table
Course.delete_all

course_file = File.read(File.join("datafile", 'course.json'))
course_hash = JSON.parse(course_file)
courses = []

# set the columns in course table
columns = [:course_id, :code, :name, :subjects, :credits, :independent_study,
          :description, :requirements, :term, :continuity_id, :comment]

course_hash.each do |course|
  # create a hash containing information of one row of data
  # and push it into a list
  courses.push({course_id: course['id'], code: course['code'], name:course['name'],
                credits: course['credits'], term: course['term'],
                continuity_id: course['continuity_id'], description: course['description'],
                independent_study: course['independent_study'], comment: course["comment"],
                requirements: course['requirements'].join(', '),
                subjects: course["subjects"].map{ |sub| "#{sub["id"]}: #{sub["segment"]}"}.join(" | ")
                })
end
# import all the array of hashes by active-import
Course.import columns, courses, validate: false