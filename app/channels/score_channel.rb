class ScoreChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_from 'score_channel'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def onGameChange(data)
    # ChatChannel.broadcast_to 'chat_channel', message: @message
    ActionCable.server.broadcast('score_channel', game_data: data)
  end
end
