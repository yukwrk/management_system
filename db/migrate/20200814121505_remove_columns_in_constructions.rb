class RemoveColumnsInConstructions < ActiveRecord::Migration[5.2]
  def change

    remove_column :constructions, :contract_price, :bigint
    remove_column :constructions, :material_cost, :bigint
    remove_column :constructions, :subcontract_cost, :bigint
    remove_column :constructions, :site_overhead_expenses, :bigint
    remove_column :constructions, :selling, :bigint
    remove_column :constructions, :cash_budget, :bigint
    remove_column :constructions, :pay_the_difference, :bigint
    remove_column :constructions, :selling_the_difference, :bigint
    remove_column :constructions, :construction_date, :date

    add_column :constructions, :partner_name, :string
    add_column :constructions, :monthly_total_cost, :bigint
  end
end
