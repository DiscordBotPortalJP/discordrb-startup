# frozen_string_literal: true

require 'discordrb'

TOKEN = ENV['DISCORD_BOT_TOKEN']
TOKEN.freeze

bot = Discordrb::Commands::CommandBot.new token: TOKEN, prefix: '/'

bot.command(:ping) do |event|
  event.respond 'pong'
end

bot.run
