class BeveragesSerializer < ActiveModel::Serializer
  attributes :id, :name, :user_id, :base_flavor, :water_type, :secondary_flavor, :extra_flavor
end
