class Company < ApplicationRecord

  require 'csv'

  validates :company_name, presence: true, length: { minimum: 1, maximum: 100 }, uniqueness: { case_sensitive: false }
  validates :company_industry, length: { maximum: 50 }
  validates :company_valuation, length: { maximum: 15 }
  validates :company_ownership_type, length: { maximum: 300 }
  validates :company_comments, length: { maximum: 5000 }

  has_many :financials

  def self.to_csv
    attributes = %w{id company_name company_industry company_valuation}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |company|
        csv << attributes.map{ |attr| company.send(attr) }
      end
    end
  end

end
