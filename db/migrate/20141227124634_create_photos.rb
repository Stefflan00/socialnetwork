class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :name
      t.integer :width
      t.integer :height
      t.integer :user_id

      t.timestamps
    end
  end
end
