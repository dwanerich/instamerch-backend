# require 'base64'
# require 'rest-client'
# require 'clipboard'
require "rspotify"
require 'pry'


class SpotifySearch
  def self.run(query)
    response = RSpotify::Album.search(query).first(5)
    albums = response.map { |album| { name: album.name, image: album.images.first["url"] } }
  end
end