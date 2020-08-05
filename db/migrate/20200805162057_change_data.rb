class ChangeData < ActiveRecord::Migration[5.2]
  def change
    change_column :constructions, :contract_price, :bigint
    change_column :constructions, :material_cost, :bigint
    # change_column :constructions, :subcontract_cost, :bigint
    change_column :constructions, :site_overhead_expenses, :bigint
    change_column :constructions, :total_cost, :bigint
    change_column :constructions, :selling, :bigint
    change_column :constructions, :cash_budget, :bigint
    change_column :constructions, :charge, :bigint
    change_column :constructions, :pay_the_difference, :bigint
    change_column :constructions, :selling_the_difference, :bigint

  end
end
