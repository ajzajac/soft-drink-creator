class Beverage < ApplicationRecord
    has_many :ingredients
    belongs_to :user
    belongs_to :favorite

    validates :name, presence: true
    validates :base_flavor, presence: true
    validates :secondary_flavor, presence: true
    validates :water_type, presence: true
end
