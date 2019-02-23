class Financial < ApplicationRecord

  validates :company_year, presence: true, length: { minimum: 4, maximum: 4 }
  validates :company_year_income, length: { maximum: 15 }
  validates :company_year_cogs, length: { maximum: 15 }
  validates :company_year_ebitda, length: { maximum: 15 }
  validates :company_year_ebitda_ratio, length: { maximum: 15 }
  validates :company_year_ebit, length: { maximum: 15 }
  validates :company_year_ebit_ratio, length: { maximum: 8 }
  validates :company_year_cagr, length: { maximum: 8 }

  belongs_to :company

end
