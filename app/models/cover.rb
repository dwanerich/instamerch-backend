# class Cover < ApplicationRecord
#     # belongs_to :user

#     def self.get_covers_from_spotify(endpoint)
#         response = SpotifySearch.new(endpoint)
#         covers = response.results['images']
#         covers.each{|cover| create+from_spotify_data(covers)}
#     end

#     def self.create_from_spotify_data(cover)
#         create(
#             title: cover['title'],
#             img_url: cover['img_url']
#         )
#     end
# end
