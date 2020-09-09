class CreatePaintings < ActiveRecord::Migration[5.1]
  def change
    create_table :paintings do |t|
      t.references :artist, foreign_key: true
      t.string :name
      t.string :description
      t.string :medium
      t.string :color_palette
      t.string :image
    end
  end
end
