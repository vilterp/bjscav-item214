class CreateFountains < ActiveRecord::Migration
  def change
    create_table :fountains do |t|
      t.integer :building_id
      t.integer :floor
      t.string :loc_info

      t.timestamps
    end
  end
end
