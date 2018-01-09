class SessionsController < ApplicationController
  skip_before_action :authenticate

  def create
    user = User.find_by_email(auth_params[:email])
    if user && user.authenticate(auth_params[:password])
      jwt = Auth.issue({user: user.id})
      render json: { jwt: jwt }, status: :ok
    else
      render json: { error: 'You have entered incorrect email or password!' }, status: :bad_request
    end
  end

  private

  def auth_params
    params.require(:auth).permit(:email, :password)
  end
end
