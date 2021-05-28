jQuery(document).on 'turbolinks:load', ->
  App.user_presence = App.cable.subscriptions.create { channel: "AppearanceChannel" },

    received: (data) ->
      users = (data['users'].map (user) -> '🧍 ' + user['nickname'])
      $('#online').text(users)
