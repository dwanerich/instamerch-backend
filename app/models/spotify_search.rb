require 'base64'
require 'rest-client'
require 'pry'
require 'clipboard'
require "rspotify"

class SpotifySearch
  def self.run(query)
    response = RSpotify::Album.search(query).first(2)
    albums = response.map { |album| { name: album.name, image: album.images.first["url"] } }
  end
end