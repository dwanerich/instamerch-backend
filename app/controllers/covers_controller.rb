class CoversController < ApplicationController

    def new
        super
    end

    def index
        covers = Cover.all
        render json: covers
    end

    def create
        title = params[:title]
        img_src = params[:img_src]

        cover = Cover.new({
        title: title,
        img_src: img_src,
        })

        if cover.save!
        cover.reload
        sign_in user
        
        render json: { title: cover.title, img_src: cover.img_src, id: current_user.id}
        else
            render json: { error: "something went wrong"}, status: 500
        end
    end

        def current_user_id
            p session
            render json: { user_id: User.last.id }
        end

        # GET /resource/edit
        def edit
            super
        end

        # PUT /resource
        def update
            super
        end

        # DELETE /resource
        def destroy
            super
        end
 
end
