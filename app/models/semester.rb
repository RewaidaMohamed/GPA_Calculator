class Semester < ActiveRecord::Base
	belongs_to :user


	validates_presence_of :credit1 , :message => "numbers only"
	validates_numericality_of :credit1 
	validates_presence_of :credit2 , :message => "numbers only"
	validates_numericality_of :credit2 
	validates_presence_of :credit3 , :message => "numbers only"
	validates_numericality_of :credit3 
	validates_presence_of :credit4 , :message => "numbers only"
	validates_numericality_of :credit4 
	validates_presence_of :credit5 , :message => "numbers only"
	validates_numericality_of :credit5 
end
