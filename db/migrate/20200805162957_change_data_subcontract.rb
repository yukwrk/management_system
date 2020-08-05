class ChangeDataSubcontract < ActiveRecord::Migration[5.2]
  def change
    change_column :constructions, :subcontract_cost, 'bigint USING CAST(subcontract_cost AS bigint)'
  end
end
