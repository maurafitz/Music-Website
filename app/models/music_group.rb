class MusicGroup < ActiveRecord::Base
  attr_accessible :date_formed, :description, :location_city, :location_state, :name, :profile_photo_id, :genre_id
  belongs_to :genre
end
