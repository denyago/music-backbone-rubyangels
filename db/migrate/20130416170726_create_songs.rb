class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      t.string :file
      t.string :artist

      t.timestamps
    end
  end
end
