class ApplicationController < ActionController::API
  # skip_before_action :verify_authenticity_token
  # before_action :authorized

  def encode_token(payload)
    JWT.encode(payload, 'noice')
  end

  def auth_headers
    request.headers['Authorization']
  end

  def decoded_token
    if auth_headers
      token = auth_headers
      begin
        JWT.decode(token, 'noice')
      rescue JWT::DecodeError
        nil
      end
    end
  end

  def current_player
    if decoded_token
      player_id = decoded_token[0]['player_id']
      @player = Player.find(player_id)
    else
      nil
    end
  end

  def logged_in
    !!current_player
  end

  def authorized
    render json: {message: 'Please log in'}, status: :unauthorized unless logged_in
  end
end
