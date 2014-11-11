# List processing
#
# Write a method which accepts an array of names as an argument and
# returns a list of names and their associated lengths.

# Write a second method which accepts array returned by first one
# and prints out each name and its length. If the name is longer than 6
# characters the method needs to print out "Wow, that's a long name!"

def delegates(names)
	processed = []
	names.each do |name|
		hash = { name: name, length: name.length }
		processed << hash
	end
	processed
end

def print(processed_names)
	puts = "Im printing!"
	processed_names.each do |person|
		puts person
		puts "Person Name: #{person[:name]}, Name is #{person[:length]} letters long"
		if person[:length] > 6
			puts "Wow that is a long name!"
		else
			puts "That is a sensible length name ;-)"
		end
	end
end

processed_names = delegates(["Richard", "Jo", "James", "Mike", "Terry"])
print processed_names


