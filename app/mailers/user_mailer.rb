class UserMailer < ApplicationMailer
	# https://launchschool.com/blog/handling-emails-in-rails
	default from: "rupali.dev89@gmail.com"
	def leave_request user,lv
		@user = user
		@lv = lv
    	mail(to: @user.email, subject: 'Leave Request')
	end
end
