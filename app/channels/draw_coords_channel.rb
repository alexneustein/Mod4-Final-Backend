class DrawCoordsChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_from 'draw_coords_channel'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def send_coords(data)
    ActionCable.server.broadcast('draw_coords_channel', data: data)
  end
end
