class UsersController < ApplicationController

  def login
    user = User.find_by(username: params[:username])
    confirmation = {}
    if user && user.password == params[:password]
      confirmation = { status: 'valid', company: user.company }
    else
      confirmation = { status: 'invalid' }
    end

    render json: confirmation
  end
end
