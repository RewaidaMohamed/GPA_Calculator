class AddColGpaToSemester < ActiveRecord::Migration
  def up
  	add_column "semesters" , "gpa_result", :float
  end

  def down
  	remove_column "semesters" , "gpa_result"
  end
end
