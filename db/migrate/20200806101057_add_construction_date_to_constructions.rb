class AddConstructionDateToConstructions < ActiveRecord::Migration[5.2]
  def change
    add_column :constructions, :construction_date, :date
  end
end
