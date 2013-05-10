class CreateFountains < ActiveRecord::Migration
  def change
    create_table :fountains do |t|
      t.int :building_id
      t.int :floor
      t.string :loc_info

      t.timestamps
    end
  end
end
