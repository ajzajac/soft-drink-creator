class Beverage < ApplicationRecord
    has_many :ingredients
    belongs_to :user
    has_many :order_items
    has_many :orders, through: :order_items

    validates :name, presence: true
    validates :base_flavor, presence: true
    validates :secondary_flavor, presence: true
    validates :water_type, presence: true
end
