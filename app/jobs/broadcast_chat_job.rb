class BroadcastChatJob < ApplicationJob
  queue_as :default

  def perform(data)
    comment = data
    ActionCable.server.broadcast('chat_channel', comment: comment)
  end
end
