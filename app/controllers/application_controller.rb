class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
	


	#se non hai il permesso non passi
	rescue_from CanCan::AccessDenied do |exception|
  	redirect_to store_url, notice: "Accesso non consentito!"
	end
	
	#Inserito per cancan/ workaround per strongparameters
	#For those using CanCan. People might be experiencing this if they use CanCan with Rails 4+. Try AntonTrapps's
  #rather clean workaround solution here until CanCan gets updated:
	
	before_filter do
  	resource = controller_name.singularize.to_sym
 	 	method = "#{resource}_params"
  	params[resource] &&= send(method) if respond_to?(method, true)
	end
	

	protected
	
	def authorize
		unless User.find_by(id: session[:user_id])
		redirect_to login_url, notice: "Per favore esegui il login."
		end
	end

end
