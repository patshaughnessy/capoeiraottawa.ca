class Event < ActiveRecord::Base

  geocoded_by :address, :latitude => :lat, :longitude => :lng
  after_validation :fetch_coordinates

  has_attached_file :poster,
                    :storage => :database,
                    :styles => {:thumb => { :geometry => "100x100>", :column => 'poster_thumb_file'}},
                    :url => '/:class/:id/:attachment?style=:style'
end
