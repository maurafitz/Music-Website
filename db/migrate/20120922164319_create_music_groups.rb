class CreateMusicGroups < ActiveRecord::Migration
  def change
    create_table :music_groups do |t|
      t.string :name
      t.string :location_city
      t.string :location_state
      t.text :description
      t.integer :profile_photo_id
      t.date :date_formed

      t.timestamps
    end
  end
end
