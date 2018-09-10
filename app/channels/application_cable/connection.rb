module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :player_id

    def connect
      self.player_id = get_connecting_player_id
      logger.add_tags 'ActionCable', player_id
    end

    protected

    # the connection URL to this actioncable/channel must be
    # domain.tld?uid=the_uid
    def get_connecting_player_id
      # this is just how I get the user id, you can keep using cookies,
      # but because this key gets used for redis, I'd
      # identify_by the user_id instead of the current_user object
      request.params[:player_id]
    end
  end
end
