class CreateAlbums < ActiveRecord::Migration[6.0]
  def change
    create_table :albums do |t|
      t.string :name
      t.string :image_url
      t.string :liked_by

      t.timestamps
    end
  end
end
