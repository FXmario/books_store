module SessionsHelper
	def log_in(cashier)
		session[:cashier_id] = cashier.id
	end

	def current_cashier
		if session[:cashier_id]
			@current_cashier ||= Cashier.find_by(id: session[:cashier_id])
		end
	end

	def logged_in?
		!current_cashier.nil?
	end

	def log_out
		session.delete(:cashier_id)
		@current_cashier = nil
	end
end
