require_relative 'person'
require_relative 'secret_number'


class Game
  def initialize(person)
    @person = person
    @secret_number = SecretNumber.generate
  end

  def play
    3.downto(1) do |guess|
      guess_the_secret_number(guess)
    end
    loser_message
  end

  private

  def guess_the_secret_number(guess)
    puts "OK, #{@person.name}. You have #{guess} guesses left. Enter your guess:"
    number = gets.strip.to_i
    if number == @secret_number
      winner_message
    else
      puts "Sorry! That's incorect."
    end
  end

  def winner_message
    puts "You guessed it! #{@secret_number} is correct!"
    puts "Thanks for playing! Bye!"
    exit
  end

  def loser_message
    puts "Oh no! #{@person.name} has lost!"
    puts "You've lost! I can't believe it! This was so easy!"
    puts "You really should not have lost this game."
    puts "I am sorry for you and for all humans."
  end
end

