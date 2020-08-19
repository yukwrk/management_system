class Construction < ApplicationRecord
    has_many :details, dependent: :destroy
    accepts_nested_attributes_for :details, allow_destroy: true

    attribute :charge, :integer,  default: 0

    validates :construction_name, presence: true
end
