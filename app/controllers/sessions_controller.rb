class SessionsController < ApplicationController

  def new
  end

  def create
    cashier = Cashier.find_by(username: params[:session][:username].downcase)
    if cashier && cashier.authenticate(params[:session][:password])
      log_in cashier
      redirect_to cashier
    else
      flash.now[:danger] = 'Invalid username/password combination'
      render :new
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to login_path
  end
end