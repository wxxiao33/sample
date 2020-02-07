# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Instructor.delete_all

instructor_file = File.read(File.join("datafile", 'instructor.json'))
instructor_hash = JSON.parse(instructor_file)

instructors = []
columns = [:id, :first, :middle, :last, :email, :comment]

instructor_hash.each do |instructor|
  instructors.push({id: instructor["id"], first: instructor['first'],
                  middle: instructor["middle"], last: instructor['last'],
                  email: instructor["email"], comment: instructor['comment']})
end

Instructor.import columns, instructors, validate: false