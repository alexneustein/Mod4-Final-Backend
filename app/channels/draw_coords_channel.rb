class DrawCoordsChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_from 'draw_coords_channel'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def send_coords
  end
end
