class CreateAttendances < ActiveRecord::Migration[5.0]
  def change
    create_table :attendances do |t|
    	t.integer	:student_id, null: false
    	t.datetime	:start_time, null: false
    	t.datetime	:end_time

      t.timestamps null:false
    end
  end
end
