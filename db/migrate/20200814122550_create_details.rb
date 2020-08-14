class CreateDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :details do |t|
      t.integer :construction_id
      t.string :detail_name
      t.integer :tax_rate
      t.integer :tax_class
      t.bigint :material_cost
      t.bigint :labor_cost
      t.bigint :subcontract_cost
      t.bigint :site_overhead_expenses
      t.string :corresponding_account
      t.string :account_name
      t.date :construction_date

      t.timestamps
    end
  end
end
