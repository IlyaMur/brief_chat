class AppearanceChannel < ApplicationCable::Channel
  def subscribed
    current_user.update(online: true)
    stream_from('user_presence_channel')
    show_users
  end

  def unsubscribed
    current_user.update(online: false)
    show_users
  end

  private

  def show_users
    ActionCable.server.broadcast 'user_presence_channel', users: User.online
  end
end
