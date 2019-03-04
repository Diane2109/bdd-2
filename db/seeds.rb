# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Company.create(company_name: "Amazon", company_industry: "Produits de construction", company_valuation: 32, company_ownership_type: "test", company_comments: "test")

Company.create(company_name: "Google", company_industry: "Adhésifs", company_valuation: 320, company_ownership_type: "test", company_comments: "test")

Company.create(company_name: "Slack", company_industry: "Adhésifs", company_valuation: 65, company_ownership_type: "test", company_comments: "test")

Financial.create(company_year: 2009, company_year_income: 138.2, company_year_cogs: 80.5, company_year_ebitda: 23.0, company_year_ebitda_ratio: 15.2, company_year_ebit: 12.3, company_year_ebit_ratio: 12.8, company_year_cagr: 3.2, company_id: 2)

Financial.create(company_year: 2008, company_year_income: 13.3, company_year_cogs: 80.5, company_year_ebitda: 23.0, company_year_ebitda_ratio: 15.2, company_year_ebit: 12.3, company_year_ebit_ratio: 12.8, company_year_cagr: 3.2, company_id: 1)

Financial.create(company_year: 2007, company_year_income: 13.3, company_year_cogs: 80.5, company_year_ebitda: 23.0, company_year_ebitda_ratio: 15.2, company_year_ebit: 12.3, company_year_ebit_ratio: 12.8, company_year_cagr: 3.2, company_id: 1)

Financial.create(company_year: 2006, company_year_income: 13.3, company_year_cogs: 80.5, company_year_ebitda: 23.0, company_year_ebitda_ratio: 15.2, company_year_ebit: 12.3, company_year_ebit_ratio: 12.8, company_year_cagr: 3.2, company_id: 1)

Financial.create(company_year: 2010, company_year_income: 13.3, company_year_cogs: 80.5, company_year_ebitda: 23.0, company_year_ebitda_ratio: 15.2, company_year_ebit: 12.3, company_year_ebit_ratio: 12.8, company_year_cagr: 3.2, company_id: 2)

User.create(user_first_name: "Diane", user_last_name: "Bunod", user_email: "d.bunod@gmail.com", password: "123456", user_admin?: true)

User.create(user_first_name: "Jess", user_last_name: "DSR", user_email: "jessie@gmail.com", password: "123456", user_admin?: false)
