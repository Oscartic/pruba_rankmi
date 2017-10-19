class Area < ApplicationRecord
  has_many :areas, class_name: 'Area', foreign_key: 'area_id'
  belongs_to :leadership, class_name: 'Area', optional: true
  has_many :departments
end
