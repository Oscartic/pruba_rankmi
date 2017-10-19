class AreaSerializer < ActiveModel::Serializer
  attributes :id, :name, :score
  has_many :areas
  has_many :departments
end
