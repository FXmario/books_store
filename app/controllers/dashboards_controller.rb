class DashboardsController < ApplicationController
  before_action :logged_in_cashier, only: [:home]

  def home
  end

  def contact
  end

  def help
  end

  def about
  end

  private 

    def logged_in_cashier
      unless logged_in?
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end
end
