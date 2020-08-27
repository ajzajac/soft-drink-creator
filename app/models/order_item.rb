class OrderItem < ApplicationRecord
    belongs_to :beverage
    belongs_to :order
end
