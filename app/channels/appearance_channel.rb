class AppearanceChannel < ApplicationCable::Channel
  def subscribed
    stream_from "appearance_channel"

    OnlineService.new(current_user).make_online!
  end

  def unsubscribed
    OnlineService.new(current_user).make_offline!
  end
end
