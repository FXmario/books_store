class CashiersController < ApplicationController
  before_action :logged_in_cashier

  def show
    @cashier = Cashier.find(params[:id])
  end

  def new
    @cashier = Cashier.new
  end

  def create
    @cashier = Cashier.new(cashier_params)
    if @cashier.save
      log_in @cashier
      flash[:success] = "User has been created."
      redirect_to @cashier
    else
      render :new
    end
  end

  def edit
    @cashier = Cashier.find(params[:id])
  end
  

  private

    def cashier_params
      params.require(:cashier).permit(:name, :cashier_address, :phone, :status,  :username, :password, :password_confirmation)
    end

    def logged_in_cashier
    unless logged_in?
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end
end
