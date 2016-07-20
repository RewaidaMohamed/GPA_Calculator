class CreateSemesters < ActiveRecord::Migration
  def change
    create_table :semesters do |t|
    	t.column "user_id" , :int , :null => false
    	t.string "course1" , :limit => 100
    	t.string "course2" , :limit => 100
    	t.string "course3" , :limit => 100
		t.string "course4" , :limit => 100
		t.string "course5" , :limit => 100
      t.timestamps null: false
    end
  end
end
