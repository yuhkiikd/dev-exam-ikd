class CreateStations < ActiveRecord::Migration[5.0]
  def change
    create_table :stations do |t|
      t.string :line
      t.string :station
      t.integer :min
      t.references :property, foreign_key: true

      t.timestamp
    end
  end
end