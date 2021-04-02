# frozen_string_literal: true

require 'rspec'
require './lib/bot'

RSpec.describe 'generate_feed' do
  it 'When the input is a feed' do
    $stdin = StringIO.new('https://developers-jp.googleblog.com/feeds/posts/default')
    expect(AddRSSlackBot::Bot.generate_feed).to eq('https://developers-jp.googleblog.com/feeds/posts/default')
  end

  it 'When the input is a URL' do
    $stdin = StringIO.new('https://developers-jp.googleblog.com')
    expect(AddRSSlackBot::Bot.generate_feed).to eq('https://developers-jp.googleblog.com/feeds/posts/default')
  end

  it 'Input is not recognized when a URL' do
    $stdin = StringIO.new('aaaa')
    expect(AddRSSlackBot::Bot.generate_feed).to eq(nil)
  end

  it 'Strings other than URL format' do
    $stdin = StringIO.new('aaa aaa')
    expect(AddRSSlackBot::Bot.generate_feed).to eq(nil)
  end
end
