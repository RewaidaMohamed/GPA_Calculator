class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
    		t.column "user_name" , :string , :limit =>100 , :null => false
    		t.string "mail" , :limit => 50, :null => false
    		t.string "password" , :limit => 50 , :null => false
      t.timestamps null: false
    end
  end

  def down
  	drop_table :users
  end
end
