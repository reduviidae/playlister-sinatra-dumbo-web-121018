class CreateArtistgenres < ActiveRecord::Migration
  def change
    create_table :artistgenres do |t|
      t.integer :artist_id
      t.integer :genre_id
    end
  end
end
