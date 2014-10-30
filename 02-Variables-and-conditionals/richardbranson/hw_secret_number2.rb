puts "Welcome to a game of high-low."

# A simple flag variable to know if we want to play again.
# It is started with "y" so that the game immediately goes into the first iteration.
playagain = "y"

# We keep playing while they say "y"
while playagain == "y"

    # Our win flag, to know if they won yet
    win = false
	
    # Generate random number between 1 - 100
    randNum = rand(100) + 1

    puts "Please enter a number (1-100) or -1 to exit: "
	
    # While we haven't won yet, keep prompting for numbers and comparing.
    while !win
        # Get number from user
        guessedNumber = gets.to_i

        # Wants to quit
        if guessedNumber == -1 then
            break
        end
		
        # Lets compare our number to computer number
        if guessedNumber > randNum then
            puts "Too high, try again."
        elsif guessedNumber < randNum then
            puts "Too low, try again."
        else
            puts "You win!"
            win = true
        end
    end
	
    # If we reached here, the game has ended, ask the user if they want to play again.
    puts "Want to play again? (y/n)"
    playagain = gets.chomp!
end

puts "Thanks for playing!"