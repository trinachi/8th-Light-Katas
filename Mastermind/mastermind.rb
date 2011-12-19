require 'command_line_display.rb'
require 'command_line_input.rb'
require 'sinatra_display.rb'
require 'sinatra_input.rb'
require 'game.rb'
require 'command_line_app_runner.rb'
require 'sinatra_app_runner.rb'
require 'rubygems'
require 'sinatra'

@@game = Game.new(SinatraDisplay.new, SinatraInput.new, SinatraAppRunner.new)

get '/' do
  @@game.create_code(4)
  html = ""
  html << @@game.game_instructions
  html << @@game.get_guess_input
  html << @@game.end_game_option
  return html
end

post '/guess_code' do
  html = ""
  @@game.create_guess_array1(params[ :guess1])
  @@game.create_guess_array2(params[ :guess2])
  @@game.create_guess_array3(params[ :guess3])
  @@game.create_guess_array4(params[ :guess4])
  @@game.guess_code
  html << @@game.display_previous_tries
  html << @@game.check_guess
  html << @@game.game_instructions
  html << @@game.get_guess_input
  html << @@game.end_game_option
  return html
end

post '/the_end' do
  html = ""
  html << @@game.end_game
  return html
end








