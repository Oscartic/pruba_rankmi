class CreateAreas < ActiveRecord::Migration[5.1]
  def change
    create_table :areas do |t|
      t.string :name
      t.float :score, :default => 0
      t.references :leadership, null: true
    end
  end
end
