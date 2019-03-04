class PagesController < ApplicationController
  def index
    current_user
    require_user
    @companies = Company.all
    @users = User.all
  end

  def listing
    current_user
    require_user
    @companies = Company.all
    @financials = Financial.all

  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end
end
