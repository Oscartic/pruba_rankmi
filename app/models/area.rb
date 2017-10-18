class Area < ApplicationRecord
  has_many :children, class_name: 'Area', foreign_key: 'leadership_id'
  belongs_to :leadership, class_name: 'Area', optional: true
  has_many :departments
end
