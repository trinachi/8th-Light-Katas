class SinatraDisplay
  def show_first_try secret_code
    "<p>Guess four colors, separated by commas. You have 15 tries to get it right. Secret code:  #{secret_code.collect { |x| x + ' ' }.to_s}</p>"
  end

  def show_try(number_of_tries)
    "<p>You have #{(Game::TOTAL_TRIES - number_of_tries).to_s} tries left. Try again.</p>"
  end

  def show_last_try
    "<p>This is your last try. Make it count!</p>"
  end

  def loser_message secret_code
     "<p>Game over. You lost.</p>
     <p>The correct answer was: #{secret_code.collect! { |x| x + ' ' }.to_s}</p>"
  end

  def winning_message
     "<p>You won!</p>"
  end

  def some_correct_message number_correct
     "<p>You got #{number_correct.to_s} right.</p>"
  end

  def show_previous_tries
     "<p>Here's what you've guessed so far: </p>"
     "<p>#{h Game::ALL_TRIES}</p>"
  end
  def last_guess color
    "<p>You guessed: #{color.collect { |x| x + ' ' }.to_s}</p>"
  end
end