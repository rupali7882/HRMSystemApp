class PayrollController < ApplicationController
	def index
		user = User.order(:fname).where.not(:id=>current_user.id)
		@user = user.map { |t| { :label => t.fname, :value => t.id } } 
	end

	def salcal
	end

	def search__emp
	 	@categories = User.order(:fname).where("fname like ?", "%#{params[:term]}%")
	 	render json: @categories.map(&:name)
	end

	def get_employee
		@user = User.find(params[:id])
		lv= @user.leave_requests.map(&:days).sum()
		render json: {user: @user, emp: @user.employee, leave: lv}
	end
end

