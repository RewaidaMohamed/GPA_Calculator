class User < ActiveRecord::Base
	has_secure_password

	has_many :semesters


	validates_presence_of :user_name , :message => "user name must be included"
	validates_presence_of :mail , :message => "mail must be included"
	validates_uniqueness_of :mail , :message => "email is already used"
end
