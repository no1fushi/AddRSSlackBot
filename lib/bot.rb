# frozen_string_literal: true

require 'bundler/setup'
require 'feedbag'

module AddRSSlackBot
  class Bot
    def self.generate_feed
      @url = gets.chomp
      begin
        @feed = (Feedbag.find @url)[0]
      rescue StandardError => e
        puts "\n Class of error"
        pp e.class
        puts "\n Message of error"
        pp e.message
        puts "\n BackTrace of error"
        pp e.backtrace
        @feed = nil
      end
    end
  end
end
