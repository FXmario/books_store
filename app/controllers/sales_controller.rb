class SalesController < ApplicationController
	before_action :is_login

	def index
		@sales = Sale.all.recent
	end

	def new
		@sale = Sale.new
	end

	def create
		@sale = Sale.new(sales_params)
		if @sale.save
			redirect_to sales_path, notice: "Purchasing Success!"
		else
			flash[:notice] = "There's an error. Try again"
			render :new, status: :unprocessable_entity
		end
	end

	private

		def sales_params
			params.require(:sale).permit(:book_id, :cashier_id, :quantity, :total, :date)
		end

		def is_login
			unless logged_in?
				redirect_to root_path, notice: "Please Login!"
			end
		end
end
