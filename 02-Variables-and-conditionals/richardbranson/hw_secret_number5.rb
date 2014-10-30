number = 1 + rand(6) 
num_guesses = 3  

puts "I'm thinking of a random number from 1 to 100" 
puts "Can you guess it?"  

while num_guesses != 0
	loop do 
		print "What is your guess? " 
		guess = gets.chomp.to_i 
		num_guesses -= 1  

		unless guess == number 
			message = if guess > number 
				"Too high" 
			else "Too low" 
		end 
		puts message 
		else 
			puts "You got it!" 
			puts "It took you #{num_guesses} guesses." 
			exit 
		end 
	end
	puts "You've run out of tries...Sorry."
end