class MonthlyTotalCosts < ActiveRecord::Migration[5.2]
  def change
    drop_table :monthly_total_costs
  end
end
