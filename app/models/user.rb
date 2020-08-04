class User < ApplicationRecord
    has_many :beverages

    validates :username, uniqueness: true

end
