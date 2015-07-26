# Description
#   Show an information of the Slack
#
# Commands:
#   hubot whoami - Show the user information of you
#   hubot who is <name> - Show the user information of <name>
#
# Author:
#   Hideki IGARASHI <hideki.develop@gmail.com>

module.exports = (robot) ->
  robot.respond /whoami/, (msg) ->
    user = msg.message.user
    msg.send "name: `#{user.name}`, id: `#{user.id}`, real_name: `#{user.real_name}`, email: `#{user.email_address}`"

  robot.respond /who is (.*)/, (msg) ->
    username = msg.match[1]
    user = robot.adapter.client.getUserByName username

    unless user
      msg.send "No such user: #{username}"
      return

    msg.send "name: `#{user.name}`, id: `#{user.id}`, real_name: `#{user.real_name}`, email: `#{user.profile.email}`"
