number = rand(1..10)

puts "Guess the number between 1 and 10"
 
loop do
  begin
    user_number = Integer(gets)
    if user_number == number
      puts "You guessed it."
      break
    elsif user_number > number  
      puts "Too high."
    else
      puts "Too low."
    end
  rescue ArgumentError
    puts "Please enter an integer."
  end
end

# Please give me your name:
# Lukasz
# Hi! Lukasz
# You have 3 tries left!
# Lukasz - Guess the secret number:
# 4
# Too small!
# You have 2 tries left!
# Lukasz - Guess the secret number:
# 7
# Too big!
# You have 1 tries left!
# Lukasz - Guess the secret number:
# 6
# Congratulations Lukasz - 6 is the secret  number