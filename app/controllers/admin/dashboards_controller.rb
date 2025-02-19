class Admin::DashboardsController < ApplicationController

  before_action :authenticate_admin!
  
  def undex
    @users = User.all
  end
end
