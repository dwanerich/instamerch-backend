class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :title
      t.string :img_src
      t.belongs_to :user

      t.timestamps
    end
  end
end
