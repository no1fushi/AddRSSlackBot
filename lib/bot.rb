# frozen_string_literal: true

require 'bundler/setup'
require 'feedbag'

module AddRSSlackBot
  class Bot
    def self.generate_feed
      @url = gets.chomp
      @feed = (Feedbag.find @url)[0]
      print @feed
    end
  end
end
