# frozen_string_literal: true

require 'tomlrb'
require 'feedbag'

module Parser
  def self.parse_toml(file)
    Tomlrb.load_file(file, symbolize_keys: true)
  end

  def generate_feed(url)
    (Feedbag.find url)[0]
  rescue StandardError => e
    puts "\n Class of error"
    pp e.class
    puts "\n Message of error"
    pp e.message
    puts "\n BackTrace of error"
    pp e.backtrace
  end
end
