# List processing
#
# Write a method which accepts an array of names as an argument and
# returns a list of names and their associated lengths.

# Write a second method which accepts array returned by first one
# and prints out each name and its length. If the name is longer than 6
# characters the method needs to print out "Wow, that's a long name!"


def something(names) 		# Defines a method called "something" with the value of "names"
	processed = [] 			# Creates an Array called "processed"
	names.each do |name| 	# Iterates over the array called "names" and asigns current name to variable name.
		hash = { name: name, length: name.length } # Creates hash which contains a key and value
	 	processed << hash
	end
	processed
end

def print(processed_names)
	puts "Im printing!"
	processed_names.each do |person|
		puts person
		puts "person: #{person[:name]}, name length is #{person[:length]}"
		if person[:length] > 6
			puts "Wow, that's a long name!"
		end
	end
end
	

processed_names = something(["Jo", "Jenny", "Richard", "James", "Michael"])
print processed_names