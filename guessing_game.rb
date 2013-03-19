class GuessingGame
  def initialize
    @number = rand(10) + 1
    @won = false
    @turns = 3
  end

  def play
    puts 'Welcome to the guessing game.'

    while !@won && @turns > 0
      @turns -= 1
      guess = get_guess
      if guess == @number
        puts "You won."
        @won = true
      else
        puts high_or_low(guess)
      end
    end

    if !@won
      puts "You lose"
    end
  end

  private

  def get_guess
    print 'Guess my number(1-10): '
    gets.to_i
  end

  def high_or_low guess
    if guess < @number
      "Low"
    else
      "High"
    end
  end
end

guessing_game = GuessingGame.new
guessing_game.play
