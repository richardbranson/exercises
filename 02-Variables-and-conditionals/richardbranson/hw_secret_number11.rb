# Please give me your name:
# Richard
# Hi! Richard
# You have 3 tries left!
# Richard - Guess the secret number:
# 4
# Too small!
# You have 2 tries left!
# Richard - Guess the secret number:
# 7
# Too big!
# You have 1 tries left!
# Richard - Guess the secret number:
# 6
def generate_random_number
	rand(1..10)
end

def get_player_name
	gets.strip
end

def greet(player_name)
	puts "Hello #{player_name}!"
end

def display_rules_to(player)
	puts "#{player}, you have 3 tries to guess the secret number (between 1 and 10)."
end

def get_user_guess
	gets.strip.to_i
end

def decrement(tries)
	tries -= 1
end

def give_outcome_for(guess, secret_number)
	if guess == secret_number
		puts "Yes that's amazing you guessed it correct."
	elsif
		guess < secret_number
		puts "Sorry too low try higher."
	else
		guess > secret_number
		puts "Sorry too high try lower."
	end
end

########## RUN ORDER #############
secret_number = generate_random_number

puts "Please give me your name:"
	sleep 1 
	# puts "1"
player = get_player_name
	sleep 1 
	# puts "2"
greet(player)
	sleep 1 
	# puts "3"
display_rules_to(player)
	sleep 1 
	# puts "4"
number_of_guesses = 3
	sleep 1 
	# puts "5"

#puts number_of_guesses # Debug 
#puts secret_number # Debug

guess = get_user_guess
give_outcome_for(guess, secret_number)
number_of_guesses = decrement(number_of_guesses)











	
# puts "#{player_name} please enter your first guess..."
# guess = gets.chomp
# sleep 1
# puts "Thanks #{player_name} your first guess of #{guess}"


# player_name = get_player_name
# puts "Hi! #{player_name}"
# intro
# rules