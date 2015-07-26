# Description
#   Show an information of the Slack
#
# Commands:
#   hubot whoami - Show the user information of you
#
# Author:
#   Hideki IGARASHI <hideki.develop@gmail.com>

module.exports = (robot) ->
  robot.respond /whoami/, (msg) ->
    user = msg.message.user
    msg.send "name: `#{user.name}`, id: `#{user.id}`, real_name: `#{user.real_name}`, email: `#{user.email_address}`"
