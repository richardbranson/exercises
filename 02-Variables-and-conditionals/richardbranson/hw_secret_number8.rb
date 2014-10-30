random_number = 1 + rand(6)

puts "What is your guess?"
guess = gets.chomp

while guess.to_i != random_number

	if guess.to_i < random_number
		puts "Sorry too low try higher."
	elsif guess.to_i > random_number
		puts "Sorry too high try lower."
	else
		puts "Yes that's amazing you guessed it correct."
	end
end