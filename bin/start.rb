# frozen_string_literal: true

require './lib/bot'

bot = AddRSSlackBot::Bot.new('./config/token.toml')
bot.send_massage
