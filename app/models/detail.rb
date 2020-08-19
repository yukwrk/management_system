class Detail < ApplicationRecord
    belongs_to :construction

    # attribute :material_cost, :integer,  default: 0
    # attribute :labor_cost, :integer,  default: 0
    # attribute :subcontract_cost, :integer,  default: 0
    # attribute :site_overhead_expenses, :integer,  default: 0
    validates :detail_name, presence: true
    # validates :tax_rate, numericality: true
    # validates :tax_class, numericality: true
    validates :material_cost, numericality: true
    validates :labor_cost, numericality: true
    validates :subcontract_cost, numericality: true
    validates :site_overhead_expenses, numericality: true

end
