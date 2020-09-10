class CreateMuseumPaintings < ActiveRecord::Migration[5.1]
  def change
    create_table :museum_paintings do |t|
      t.references :museum, foreign_key: true
      t.references :painting, foreign_key: true
    end
  end
end
