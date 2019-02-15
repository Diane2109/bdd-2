class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :company_name
      t.string :company_industry
      t.integer :company_valuation
      t.string :company_ownership_type
      t.text :company_comments
      t.timestamps
    end
  end
end
