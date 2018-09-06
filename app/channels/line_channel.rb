class LineChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'line_channel'
  end

  def unsubscribed
  end
end
