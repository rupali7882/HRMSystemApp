class PayrollController < ApplicationController
	def index
	end

	def salcal
	end

	def search__emp
		@user = User.all
		render :json => @user.map{ |c| [c.id,c.email] }.to_h
	end
end

