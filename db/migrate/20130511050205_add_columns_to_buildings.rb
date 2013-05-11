class AddColumnsToBuildings < ActiveRecord::Migration
  def change
    add_column :buildings, :human_readable_name, :string
  end
end
