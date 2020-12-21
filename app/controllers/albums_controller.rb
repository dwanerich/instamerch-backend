class AlbumsController < ApplicationController
    def create
        album = Album.new(
            name: params["name"],
            image_url: params["image_url"],
            liked_by: params["liked_by"]
        )

        if album.save
            render json: { albums: Album.all}
        else
            render json: { errors: "Unable to save album"}
        end
    end

    def index
        albums = Album.all

        render json: { albums: albums }
    end
end