class BroadcastChatJob < ApplicationJob
  queue_as :default

  def perform(data)
    ActionCable.server.broadcast('chat_channel', content: data)
  end
end
