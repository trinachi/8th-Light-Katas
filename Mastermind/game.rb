class Game
  TOTAL_TRIES = 15
  ALL_TRIES = []
  
  def initialize(display, input, app_runner)
    @display = display
    @input = input
    @app_runner = app_runner
  end
  
  def create_code(num)
    @number_of_tries = 0
    @secret_code = []
    @secret_code = num.times.map do
      ["red", "orange", "yellow", "green", "blue"].choice 
    end
    # puts @secret_code
  end
  
  def end_game_option
    @input.the_end
  end
  
  def end_game
    @display.loser_message @secret_code
  end
  
  def game_instructions
    @display.loser_message(@secret_code) and return if game_over? 
    
    if initial_try?
      @display.show_first_try @secret_code
    elsif last_try?
      @display.show_last_try
    else 
      @display.show_try(@number_of_tries)
    end
  end 
  
  def game_over?
    return @number_of_tries == TOTAL_TRIES
  end
  
  def initial_try?
    return @number_of_tries == 0
  end
  
  def last_try?
    return @number_of_tries == TOTAL_TRIES - 1
  end
  
  def get_guess_input
    return @input.get_guess_input
  end
  
  def create_guess_array1(color1)
    @color = []
    @color += color1.to_a
  end
  def create_guess_array2(color2)
    @color += color2.to_a
  end
  def create_guess_array3(color3)
    @color += color3.to_a
  end
  def create_guess_array4(color4)
    @color += color4.to_a
  end
  def display_previous_tries
    return @display.last_guess @color
  end
  
  def guess_code
    # @turn = turn.chomp.split(",\s")
    # how do I add all of the guesses into a single entry?
    @turn = @color
    @number_of_tries += 1
    # check_guess turn, @secret_code
  end
  
  def check_guess
    if @turn == @secret_code
      return @display.winning_message
    else
      number_correct = 0
      for i in (0...4)
        number_correct += 1 if @turn[i] == @secret_code[i]
      end
      return @display.some_correct_message number_correct
    end
  end
end