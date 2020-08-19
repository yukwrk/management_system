class AddDefaultToDetails < ActiveRecord::Migration[5.2]
  def change
    change_column_default :details, :material_cost, 0
    change_column_default :details, :labor_cost, 0
    change_column_default :details, :subcontract_cost, 0
    change_column_default :details, :site_overhead_expenses, 0

    # NULL制約を追加
    change_column_null :details, :material_cost, false
    change_column_null :details, :labor_cost, false
    change_column_null :details, :subcontract_cost, false
    change_column_null :details, :site_overhead_expenses, false
  end
end
