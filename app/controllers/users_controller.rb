class UsersController < ApplicationController

    def create
    name = params[:name]
    email = params[:email]
    password = params[:password]

    user = User.new({
      name: name,
      email: email,
      password: password
    })

    if user.save!
      user.reload
      sign_in user
      
      render json: { name: user.name, email: user.email, id: current_user.id}
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
