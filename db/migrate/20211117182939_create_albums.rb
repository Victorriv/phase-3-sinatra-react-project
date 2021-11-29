class CreateAlbums < ActiveRecord::Migration[6.1]
  def change
    create_table :albums do |t|
      t.string :name
      t.integer :release_year
      t.integer :artist_id
    end
  end
end
