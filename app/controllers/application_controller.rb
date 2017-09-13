class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
	skip_before_action :verify_authenticity_token
	before_action :authenticate_user!

	# Acceess denied message
	rescue_from CanCan::AccessDenied do |exception|
	  redirect_to root_url, :alert => exception.message
	end
end
