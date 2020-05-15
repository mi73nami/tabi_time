class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :name, null: false
      t.string :ancestry
      t.timestamps
    end
    add_index :places, :ancestry
  end
end
