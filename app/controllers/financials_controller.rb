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
    $company_id_form = params[:id]
    @company = Company.find($company_id_form.to_i)
  end

  def create
    require_user
    params[:financial][:company_id] = $company_id_form
    @financial = Financial.new(financial_params)
    if @financial.save
      flash[:notice] = "It worked!"
      @company = Company.find($company_id_form.to_i)
      redirect_to company_path(@company)
    else
     redirect_to companies_path
    end
  end

  def edit
    require_user
    @financial = Financial.find(params[:id])
    $company_id_form = @financial.company_id
    @company = Company.find($company_id_form.to_i)
  end

  def update
    require_user
    @financial = Financial.find(params[:id])
    params[:financial][:company_id] = $company_id_form
    if @financial.update(financial_params)
     flash[:success] = "Nous avons bien mis à jour les informations concernant #{@financial.company_year}."
     @company = Company.find($company_id_form.to_i)
     redirect_to company_path(@company)
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
