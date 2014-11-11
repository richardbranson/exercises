# qf_fizzbuzz.rb
# method to check for equality
def assert_equal(expected, actual)
  raise "Expected #{expected} to match #{actual}" unless expected == actual
  puts "ok"
end

# Write a program that prints the numbers from 1 to 100.
# But for multiples of three print “Fizz” instead of the number and for the multiples of five print “Buzz”.
# For numbers which are multiples of both three and five print “FizzBuzz”.
#
# Your code here
#  puts (1..100).map {|i|
#	f = i % 3 == 0 ? 'Fizz' : nil
#	b = i % 5 == 0 ? 'Buzz' : nil
#	f || b ? "#{ f }#{ b }" : i
# }

def fizzbuzz(number)
	to_return = number
		if number % 5 == 0 and number % 3 == 0
	        to_return = "FizzBuzz"
	    elsif number % 5 == 0
	        to_return = "Buzz"
	    elsif number % 3 == 0
	        to_return = "Fizz"
	    end
	return to_return
end

# Tests
assert_equal fizzbuzz(1), 1
assert_equal fizzbuzz(3), "Fizz"
assert_equal fizzbuzz(4), 4
assert_equal fizzbuzz(50), "Buzz"
assert_equal fizzbuzz(15), "FizzBuzz"
assert_equal fizzbuzz(5175), "FizzBuzz"

1.upto(100) do |number|
  puts fizzbuzz(number)
end
