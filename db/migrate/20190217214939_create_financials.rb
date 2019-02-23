class CreateFinancials < ActiveRecord::Migration[5.2]
  def change
    create_table :financials do |t|
      t.integer :company_year
      t.float :company_year_income
      t.float :company_year_cogs
      t.float :company_year_ebitda
      t.float :company_year_ebitda_ratio
      t.float :company_year_ebit
      t.float :company_year_ebit_ratio
      t.float :company_year_cagr
      t.integer :company_id
      t.belongs_to :company, index: true
      t.timestamps
    end
  end
end
