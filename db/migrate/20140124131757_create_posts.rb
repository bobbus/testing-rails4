class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :image_uid
      t.string :other_uid
      t.timestamps
    end
  end
end
