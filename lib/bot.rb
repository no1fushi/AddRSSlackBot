# frozen_string_literal: true

require 'bundler/setup'
require 'slack-ruby-client'
require_relative './parser'

module AddRSSlackBot
  class Bot
    def initialize(tokenfile)
      Slack.configure do |config|
        config.token = Parser.parse_toml(tokenfile).values[0]
      end
      @client = Slack::Web::Client.new
    end

    def send_massage
      @client.chat_postMessage(channel: '#general', text: 'Hello World', as_user: true)
    end
  end
end
