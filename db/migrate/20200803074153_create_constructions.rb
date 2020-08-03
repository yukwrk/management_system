class CreateConstructions < ActiveRecord::Migration[5.2]
  def change
    create_table :constructions do |t|
      t.string :construction_name
      t.integer :contract_price
      t.string :person
      t.integer :material_cost
      t.string :subcontract_cost
      t.integer :site_overhead_expenses
      t.integer :total_cost
      t.integer :selling
      t.integer :cash_budget
      t.integer :charge
      t.integer :pay_the_difference
      t.integer :selling_the_difference
      t.string :comment

      t.timestamps
    end
  end
end
