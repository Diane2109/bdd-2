class PagesController < ApplicationController

  def index
    current_user
    if @current_user == nil
      else redirect_to dashboard_path
    end
  end

  def dashboard
    current_user
    require_user
    flash[:notice] = "It worked!"
    @companies = Company.all
    @users = User.all
    @array_pdc = []
    Company.all.each do |company|
      if company.company_industry == "Produits d'isolation"
        @array_pdc << company
      end
    end
    $company_industry_produits_construction = @array_pdc.count
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
