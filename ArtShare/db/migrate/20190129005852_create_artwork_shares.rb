class CreateArtworkShares < ActiveRecord::Migration[5.2]
  def change
    create_table :artwork_shares do |t|
      t.integer :viewer_id, foreign_key: true
      t.integer :artwork_id, foreign_key: true
      t.timestamps
    end
    add_index :artwork_shares, :artwork_id
    add_index :artwork_shares, [:viewer_id, :artwork_id], unique: true
  end
end
