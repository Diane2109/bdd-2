class CompaniesController < ApplicationController

  before_action :set_company, only: [:edit, :update, :show, :destroy]

  def index
    #require_user
    @companies = Company.all
  end

   def set_company
     @company = Company.find(params[:id])
   end

  def new
    #require_user
    @company = Company.new
  end

  def create
    #require_user
    @company = Company.new(company_params)
    if @company.save
      flash[:success] = "#{@company.company_name} a été ajouté.e."
      redirect_to companies_path
    else
     render 'new'
    end
  end

  def edit
    #require_user
    @company = Company.find(params[:id])
  end

  def update
    #require_user
    @company = Company.find(params[:id])
    if @company.update(company_params)
     flash[:success] = "Nous avons bien mis à jour les informations concernant #{@company.company_name}."
     redirect_to companies_path
    else
     render 'edit'
    end
   end

   def show
     @company = Company.find(params[:id])
   end

  def destroy
    #require_user
    @company.destroy
    flash[:notice] = "#{@company.company_name} a bien été supprimé."
    redirect_to companies_path
  end

  private
    def company_params
      params.require(:company).permit(:company_name, :company_industry, :company_valuation, :company_ownership_type, :company_comments)
    end


end
