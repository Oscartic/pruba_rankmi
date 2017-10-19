class CreateAreas < ActiveRecord::Migration[5.1]
  def change
    create_table :areas do |t|
      t.string :name
      t.float :score, :default => 0
      t.references :area, null: true, foreign_key: true
    end
  end
end
