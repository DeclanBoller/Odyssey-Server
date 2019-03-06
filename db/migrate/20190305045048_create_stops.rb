class CreateStops < ActiveRecord::Migration[5.2]
  def change
    create_table :stops do |t|
      t.string :location
      t.string :stop_info
      t.integer :trip_id
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
