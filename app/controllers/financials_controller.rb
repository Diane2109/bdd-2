class FinancialsController < ApplicationController

  before_action :set_financial, only: [:edit, :update, :show, :destroy]

  def index
    require_user
    @financials = Financial.all
   end

   def set_financial
     @financial = Financial.find(params[:id])
   end

  def new
    require_user
    @financial = Financial.new
    $companyid = params[:id]
  end

  def create
    require_user
    params[:company_id] = $companyid
    @financial = Financial.new(financial_params)
    if @financial.save
      flash[:success] = "#{@financial.company_year} a été ajouté.e."
      redirect_to users_path
    else
     redirect_to companies_path
    end
  end

  def edit
    require_user
    @financial = Financial.find(params[:id])
    @company = Company.find(params[:id])
  end

  def update
    require_user
    @financial = Financial.find(params[:id])
    if @financial.update(financial_params)
     flash[:success] = "Nous avons bien mis à jour les informations concernant #{@financial.company_year}."
     redirect_to financials_path
    else
     render 'edit'
    end
   end

   def show
     @financial = Financial.find(params[:id])
   end

  def destroy
    require_user
    @financial.destroy
    flash[:notice] = "#{@financial.company_year} a bien été supprimé."
    redirect_to financials_path
  end

  private
    def financial_params
      params.require(:financial).permit(:company_year, :company_year_income, :company_year_cogs, :company_year_ebitda, :company_year_ebitda_ratio, :company_year_ebit, :company_year_ebit_ratio, :company_year_cagr, :company_id)
    end

end
