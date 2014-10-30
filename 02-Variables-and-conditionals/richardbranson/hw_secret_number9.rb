number = 5 + rand(65)
puts "What is your name?"
name = gets.chomp
print "#{name}, try to guess the magic number between 5 and 69: "

diff = { false => "bigger", true => "smaller" }

loop do
   user_try = gets.to_i
   break if user_try == number
   puts "#{name} the number is #{diff[user_try > number]} than #{user_try}!"
   print "Try again: "
end

puts "Congratulations #{name}! You found the magic number!"
puts "The number is #{number}."