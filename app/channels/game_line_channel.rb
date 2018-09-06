class GameLineChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    @users = User.all
    stream_for @users
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
