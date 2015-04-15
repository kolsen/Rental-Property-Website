class RenameAddPropertiesToProperties < ActiveRecord::Migration
  def change
    rename_table :add_properties, :properties
  end
end
