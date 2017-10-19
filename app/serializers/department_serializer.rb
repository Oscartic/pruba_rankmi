class DepartmentSerializer < ActiveModel::Serializer
  attributes :id, :name, :score, :area_id
  belongs_to :area
end
