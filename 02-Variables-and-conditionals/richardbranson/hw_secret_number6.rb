number = 5 + rand(65)
puts "Try to guess the Magic NuMbeR is between 5 and 69"

begin
  user_try = gets.chomp.to_i
  puts "The NuMbeR is #{user_try > number ? 'smaller' : 'bigger'} than
#{user_try}! Try again:" unless user_try == number
end until user_try == number

puts "Congratulations! You found the Magic NuMbeR! The NuMbeR is #{number}."