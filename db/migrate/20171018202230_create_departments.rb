class CreateDepartments < ActiveRecord::Migration[5.1]
  def change
    create_table :departments do |t|
      t.string :name
      t.float :score, :default => 0
      t.belongs_to :area, index: true, foreign_key: true
    end
  end
end
