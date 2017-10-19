class DepartmentSerializer < ActiveModel::Serializer
  attributes :id, :name, :score
  belongs_to :area
end
