class DemoController < ApplicationController
  def new
  end

  def signup
  end

  def homepage
  	 @user = User.find(params[:id])
  end

  def attempt_login
  	if params[:mail].present? && params[:password].present? #feh 7aga hna
      found_user = User.where(:mail => params[:mail]).first
      if found_user
        authorized_user = found_user.authenticate(params[:password])
      end
    end
    if authorized_user
      #object
      flash[:notice] = "You are now logged in."
      redirect_to(:action => 'homepage' , :id => authorized_user.id) 
    else 
      #false
      flash[:notice] = "Invalid username/password combination."
      redirect_to(:action => 'signup')
    end
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		redirect_to(:action => "homepage" , :id => @user.id)
  	else
      @user.errors.full_messages
  		render('signup')
  	end
  end

  def logout
    flash[:notice] = "Logged out"
    redirect_to(:action => "new")
  end

  private
  	def user_params 
  		params.require(:user).permit(:user_name , :mail , :password)
  	end
end
