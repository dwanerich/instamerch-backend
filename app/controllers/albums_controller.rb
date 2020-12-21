class AlbumsController < ApplicationController
    def create
        album = Album.new(name: params["name"],
            image_url: params["image_url"]
        )

        if album.save
            render json: { albums: Album.all}
        else
            render json: { errors: "Unable to save album"}
        end
    end

end