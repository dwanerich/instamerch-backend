class UsersController < ApplicationController

    def new
        user = User.new(username: params[:username], email: params[:email], password: params[:password])
    end

    def index
        users = User.all
        render json: users
    end

    def create
        username = params[:username]
        email = params[:email]
        password = params[:password]

        user = User.new({
        username: username,
        email: email,
        password: password
        })

        if user.save!
        user.reload
        sign_in user
        
        render json: { name: user.username, email: user.email, id: user.id}
        else
        render json: { error: "something went wrong"}, status: 500
        end
    end

    def show
        user = User.find(params[:id])
        
    end

#   def current_user_id
#     p session
#     render json: { user_id: User.last.id }
#   end

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
