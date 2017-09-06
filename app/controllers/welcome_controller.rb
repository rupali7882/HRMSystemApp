# http://railsapps.github.io/rails-authorization.html
class WelcomeController < ApplicationController
	before_action :authenticate_user!
	before_action :check_role, only: [:index]

  def index
  end

  def hr
  end

  def employee
  end

  private

  def check_role
  	if current_user.has_role? 'employee'
  		redirect_to employee_welcome_path
    elsif current_user.has_role? 'hr'
  		redirect_to hr_welcome_path
	   else
     redirect_to :back, alert: 'access denied'
    end
  end
end



