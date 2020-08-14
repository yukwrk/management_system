class Construction < ApplicationRecord
    has_many :details, dependent: :destroy
    accepts_nested_attributes_for :details, allow: true
end
