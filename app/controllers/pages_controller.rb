class PagesController < ApplicationController
  def index
  end

  def listing
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
