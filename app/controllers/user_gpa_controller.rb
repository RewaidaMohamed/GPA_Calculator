class UserGpaController < ApplicationController
   	

  
  def dashboard
  	@user = User.find(params[:user_id])
  	@semesters = @user.semesters
  end

  def gpa_calc
  		#user = User.find(params[:user_id])
  		
  end

  def calculate
  	#@user = User.find(params[:user_id])
  	@semester = Semester.new(sems_params)
  		if @semester.save
  			redirect_to(:action => "display_gpa" , :user_id => @semester.user_id , :id => @semester.id)
  		else
        render('gpa_calc' , :user_id => @semester.user_id)
  		end	
  end

  def display_gpa
  		@semester = Semester.find(params[:id])
  		  	@credit_sum = @semester.credit1.to_f + @semester.credit2.to_f + @semester.credit3.to_f + @semester.credit4.to_f + @semester.credit5.to_f
  		    @grades_points = (@semester.grade1.to_f*@semester.credit1.to_f)+ (@semester.grade2.to_f*@semester.credit2.to_f) + (@semester.grade3.to_f*@semester.credit3.to_f) + (@semester.grade4.to_f*@semester.credit4.to_f) + (@semester.grade5.to_f*@semester.credit5.to_f)
  		    @semester.gpa_result = @grades_points / @credit_sum
  		    @semester.save
  		    
  end

  private 
  	def sems_params
  		params.require(:semester).permit(:user_id ,:course1 , :course2 , :course3 , :course4 , :course5, :credit1 , :credit2 , :credit3 , :credit4 , :credit5 , :grade1 , :grade2 , :grade3 , :grade4 , :grade5)
  	end

  private
   	def intialize_id(id)
   		@user_id = id
   	end
end
