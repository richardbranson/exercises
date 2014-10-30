# Homework - Secret Number Game.
# hw_secret_number.rb
def secret_number #define secret_number variable, containing while-loops and if-else statements
    puts "Put on the blindfold and roll the dice."
    number = 1 + rand(6) #random number between 1..6 inclusive
    puts "Can you guess the number on the dice?"
    # number = 4         #define secret number as 4
    guesses = 2          #guesses variable starting off as '0'
    guess = gets.chomp   #guess variable defined as getting user input
 
    #while loop run as long as variable guess is either lower or higher than variable number
    

    #while guess( method .to_i convert to integer) is less than variable number (is true)  AND guesses variable less than 3 (is true), enter this loop 
    if guess.to_i = number
    while guess.to_i != number
        
        if guess.to_i != number && guesses == 0
            puts "Game over. Please try again."
            break
        elsif guess.to_i < number 
            puts "Try again a bit higher.."
            guess = gets.chomp
            guesses -= 1
        elsif guess.to_i > number
            puts "Try again a bit lower.."
            guesses -= 1
            guess = gets.chomp
        elsif guess.to_i == number
            puts "Congratulations, you win!"
        else
            puts "Game over. Try again."
        end
    end
end

# Programme Start

secret_number
 
