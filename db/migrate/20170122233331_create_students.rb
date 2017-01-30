class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
    	t.text	:first_name, null: false
    	t.text	:last_initial, null: false
    	t.datetime	:scheduled
    	t.integer	:duration

    	t.timestamps null: false
    end
  end
end
