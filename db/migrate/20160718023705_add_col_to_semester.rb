class AddColToSemester < ActiveRecord::Migration
  def change
  	add_column "semesters" , "credit1" , :int
  	add_column "semesters" , "credit2" , :int
  	add_column "semesters" , "credit3" , :int
  	add_column "semesters" , "credit4" , :int
  	add_column "semesters" , "credit5" , :int

  	add_column "semesters" , "grade1" , :string, :limit => 10
  	add_column "semesters" , "grade2" , :string, :limit => 10
  	add_column "semesters" , "grade3" , :string, :limit => 10
  	add_column "semesters" , "grade4" , :string, :limit => 10
  	add_column "semesters" , "grade5" , :string, :limit => 10
  end
end
