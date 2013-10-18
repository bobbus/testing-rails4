class RenameTable < ActiveRecord::Migration
  def change
    rename_column :table_with_long_names, :field_with_long_name, :field_with_too_too_too_too_too_long_name
  end
end
