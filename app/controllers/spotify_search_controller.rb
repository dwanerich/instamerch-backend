class SpotifySearchController < ApplicationController
  def search
    results = SpotifySearch.run(params["query"])
    
    render json: results
  end
end
