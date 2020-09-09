class CreateArtists < ActiveRecord::Migration[5.1]
  def change
    create_table :artists do |t|
      t.string :first_name
      t.string :last_name
      t.string :year
      t.string :location
    end
  end
end
