class ScoreChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_from 'score_channel'
    ConnectedList.add(game_id)
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
    ConnectedList.remove(game_id)
  end

  def onGameChange(data)
    @game_data = data
    # ChatChannel.broadcast_to 'chat_channel', message: @message
    ActionCable.server.broadcast('score_channel', game_data: @game_data)
  end
end
