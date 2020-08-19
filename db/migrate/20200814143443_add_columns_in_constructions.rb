class AddColumnsInConstructions < ActiveRecord::Migration[5.2]
  def change
    add_column :constructions, :total_material_cost, :bigint
    add_column :constructions, :total_labor_cost, :bigint
    add_column :constructions, :total_subcontract_cost, :bigint
    add_column :constructions, :total_site_overhead_expenses, :bigint
  end
end
