class AddTimeAndDayToStudents < ActiveRecord::Migration[5.0]
  def change
  	add_column	:students, :day, :string
  	add_column	:students, :time, :time
  	remove_column	:students, :scheduled
  end
end
