include Geokit::Geocoders

class Location < ActiveRecord::Base
  acts_as_mappable
  before_create :set_lat_lng
  def set_lat_lng
    geocoded_address = GoogleGeocoder.geocode(self.address)
    self.lat = geocoded_address.lat
    self.lng = geocoded_address.lng
  end
end
