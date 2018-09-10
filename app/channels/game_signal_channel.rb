class GameSignalChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'game_signal_channel'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def send_signal(data)
    ActionCable.server.broadcast('game_signal_channel',
      data: data
    )
  end

end
