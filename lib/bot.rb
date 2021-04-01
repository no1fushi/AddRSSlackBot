# frozen_string_literal: true

require 'bundler/setup'
require 'feedbag'

module AddRSSlackBot
  class Bot
    def self.hello
      line = gets.chomp
      Feedbag.find line
    end
  end
end
