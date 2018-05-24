class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	 include SessionsHelper

	 private


	 def admin_user
	 	unless current_user.admin?
	 		falash[:danger] = "You can't access to this page"
	 		redirect_to root_path
	 	end
	  	
	 end
end
