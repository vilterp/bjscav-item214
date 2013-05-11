class ChangeNameToSlug < ActiveRecord::Migration
  def up
    rename_column :buildings, :name, :slug
  end

  def down
  end
end
