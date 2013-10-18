class CreateTableWithLongName < ActiveRecord::Migration
  def change
    create_table :table_with_long_names do |t|
      t.string :field_with_long_name
    end
    add_index :table_with_long_names, :field_with_long_name
  end
end
