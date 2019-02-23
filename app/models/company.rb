class Company < ApplicationRecord

  validates :company_name, presence: true, length: { minimum: 1, maximum: 100 }, uniqueness: { case_sensitive: false }
  validates :company_industry, length: { maximum: 50 }
  validates :company_valuation, length: { maximum: 15 }
  validates :company_ownership_type, length: { maximum: 300 }
  validates :company_comments, length: { maximum: 5000 }

  has_many :financials

end
