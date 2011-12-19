require 'about_scoring_project.rb'
require 'about_dice_project.rb'

class Game
  def number_of_players
    puts "This is the Dice Game. How many players?" 
    @players = gets.chomp.to_i
    player_names
  end
  def player_names
    @all_players = []
    (0...@players).each do |i|
      puts "Player " + (i + 1).to_s + ", what's your name?"
      name = gets.chomp
      @all_players.push(name)
    end
    roll_dice
  end
  def roll_dice
    @player_scores = []
    @all_players.each do |x|
      puts x.to_s + ", your dice rolls are: "
      @dice = DiceSet.new
      @dice.roll(5)
      find_values
    end
    announce_winner
  end
  def find_values
    @rolls = []
    @dice.values.each do |value|
      puts "#{value}"
      @rolls.push value
    end
    write_score
  end
  def write_score
    total = score(@rolls)
    puts "\nTotal Score: "
    puts total
    puts "\s"
    @player_scores.push(total)
  end
  def announce_winner
    tie_checker = 0
    winning_score = @player_scores.index(@player_scores.max)
    (0...@players).each do |i|
      if @player_scores.index(i) == @player_scores.max
        tie_checker += 1
      end
    end
    if tie_checker >= 1
      puts "It's a tie!"
    else
      puts "And the winner is " + @all_players[winning_score].to_s
    end
  end
end

game = Game.new
game.number_of_players