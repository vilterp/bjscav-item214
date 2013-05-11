class AddColumnToBuilding < ActiveRecord::Migration
  def change
    add_column :buildings, :area_id, :integer
  end
end
