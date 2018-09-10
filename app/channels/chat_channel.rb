class ChatChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"]
    # chatroom = ChatChannel.find_or_create_by(name: params['room'])
    # room = params['room']
    stream_from "chat_channel"
    # ConnectedList.add(player_id)
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
    # ConnectedList.remove(player_id)
    # ActionCable.server.broadcast(specific_channel, counter: count_unique_connections )
  end

  def onChat(data)
    @message = data
    # @users = self.count_unique_connections
    # ChatChannel.broadcast_to 'chat_channel', message: @message
    ActionCable.server.broadcast('chat_channel', message: @message)
  end

  # def update_students_counter
  #   ActionCable.server.broadcast(specific_channel, counter: count_unique_connections )
  # end

private
  #Counts all users connected to the ActionCable server
  # def count_unique_connections
  #   connected_users = []
  #   ActionCable.server.connections.each do |connection|
  #     connected_users.push(connection.current_user.id)
  #   end
  #   return connected_users.uniq.length
  # end



end
