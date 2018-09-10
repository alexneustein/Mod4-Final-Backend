class ChatChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"]
    # chatroom = ChatChannel.find_or_create_by(name: params['room'])
    # room = params['room']
    stream_from "chat_channel"
    ConnectedList.add(player_id)
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
    ConnectedList.remove(player_id)
  end

  def onChat(data)
    @message = data
    # ChatChannel.broadcast_to 'chat_channel', message: @message
    ActionCable.server.broadcast('chat_channel', message: @message)
  end



end
