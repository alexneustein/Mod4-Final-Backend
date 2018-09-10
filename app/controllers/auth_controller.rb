class AuthController < ApplicationController
# skip_before_action :authorized, only: [:create]

def login
  @player = Player.find_by(username: auth_params['username'])
  if @player && @player.authenticate(auth_params['password'])
    token = encode_token({player_id: @player.id})
    render json: {player: @player.format, jwt: token}, status: :accepted
  else
    render json: {message: 'Invalid Username or Password'}, status: :unauthorized
  end
end

def reauth
  render json: { player: @player.format }, status: :accepted
end

private

def auth_params
  params.require(:player).permit(:username, :password)
end

end
