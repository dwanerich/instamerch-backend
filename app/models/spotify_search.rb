require 'base64'
require 'rest-client'
require 'pry'
require 'clipboard'

attr_reader: results

class SpotifySearch

        def initialize(data)
    params = {
      title: "title",
      data: data,
      img_src: "img_src"
    }
        client_token = Base64.strict_encode64("57e47161e34c42c899f37a7296003532" + ":" + "b47919cd399644f1975038363bbdb479")
        spotify_token = RestClient.post("https://accounts.spotify.com/api/token",{"grant_type": "client_credentials"}, {"Authorization": "Basic #{client_token}"})
        parsed_token = JSON.parse(spotify_token)
        response = `curl -X GET "https://api.spotify.com/v1/search?q=#{"Danger Zone"}&type=album,track" -H "Authorization: Bearer #{parsed_token["access_token"]}"`
end