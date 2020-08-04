class User < ApplicationRecord
    has_many :beverages

    validates :name, uniqueness: true

end
