number = 1 + rand(6)
guesses = 2


puts "Enter your name to play?"
name = gets.chomp
puts "Hello, #{name}. Welcome to roll the dice."
puts "I've picked a number between 1 and 6. See if you can guess it!"

until number == gets.chomp.to_i
puts "WRONG! Try again."
end

puts "You got it!"