# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Student.create!(
				first_name: "Kim",
				last_initial: "N",
				scheduled: DateTime.new(2017, 1, 3, +15),
				duration: 30
				)

Student.create!(
				first_name: "Franklin",
				last_initial: "D",
				scheduled: DateTime.new(2017, 1, 4, +16),
				duration: 60
				)

Student.create!(
				first_name: "Chuck",
				last_initial: "D",
				scheduled: DateTime.new(2017, 1, 6, +15.5),
				duration: 45
				)

Attendance.create!(
				student_id: 1,
				start_time: DateTime.new(2017, 1, 10, +15),
				end_time: DateTime.new(2017, 1, 10, +15.5)
				)

Attendance.create!(
				student_id: 1,
				start_time: DateTime.new(2017, 1, 17, +15),
				end_time: DateTime.new(2017, 1, 17, +15.5)
				)

Attendance.create!(
				student_id: 1,
				start_time: DateTime.new(2017, 1, 24, +15),
				end_time: DateTime.new(2017, 1, 24, +15.5)
				)

Attendance.create!(
				student_id: 2,
				start_time: DateTime.new(2017, 1, 11, +16),
				end_time: DateTime.new(2017, 1, 11, +17)
				)

Attendance.create!(
				student_id: 3,
				start_time: DateTime.new(2017, 1, 13, +15.5),
				end_time: DateTime.new(2017, 1, 13, +16.25)
				)