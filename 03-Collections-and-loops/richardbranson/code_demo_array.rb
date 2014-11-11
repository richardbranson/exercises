# Create a new array and assign it to a variable
books = []
# Check its class
puts books.class
# Reiterate that a class tells you what things this object can respond to
puts books.empty?
# Create a staff array with the instructor and TAs names
staff = ["Laurent" , "Lukasz"]
# Show getting size with count, size, length, empty?
puts "Size: #{staff.size} #{staff.length}"

staff.each do |name|
	puts "#{name} has #{name.size} letter"
	end

# Show reading from an array, zero indexing
staff << "Paul"
staff << "John"

puts staff.last
puts staff [ -1 ]
puts staff [ staff.size -1 ]
# Show appending to the array, with push, << and unshift
history = []
history << "facebook.com"
history << "google.com"
history << "github.com"
history << "ebay.com"

history.push "richardbranson.biz"

history.unshift "git-cms.com"

# Show popping and shifting


# Show how include? works
puts "do we have github? #{history.include? 'github.com'}"
puts "Do we have ebay? #{history.include? 'ebay.com'}"

found = false

# equivalent of 'include?' - note that found needs to be defined before!
history.each do |website|
	found = false
	if website == 'ebay.com'
		found = true
	end
end

puts "Do we have ebay? #{found}"
# Show BANG Methods #sort!, #uniq!, #shuffle!, reverse!
puts '-' * 10
puts "history: #{history}"
puts "history sorted: #{history.sort}"
puts "history: #{history}"
puts '-' * 10
puts "history: #{history}"
puts "history sorted: #{history.sort!}"
puts "history: #{history}"
# Show join, to_s
# Show split from string
puts '-' * 10

puts "history: #{history}"
puts "history as a string: #{history.join(',')}"

candies = "candy lollipop snickers".split(' ')
puts "candies: #{candies}"