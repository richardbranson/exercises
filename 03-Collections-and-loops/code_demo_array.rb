# Create a new array and assign it to a variable
books = []
# Check its class
puts books.class
# Answer = Array
puts books.empty?
# Answer = True
books << "Italian cookbook"
puts books.empty?
# Answer = False

# Create a staff array with the instructor and TAs names
staff = [ "Laurent" , "Lukasz" ]
# Show getting size with count, size, length, empty?
puts "Size: #{staff.size} #{staff.length}" 
# Answer =  Size: 2 2

staff.each do |name|
  puts "#{name} has #{name.size} letter"
end
# Answer = Laurent has 7 letter
# Answer =  Lukasz has 6 letter

# Show reading from an array, zero indexing
staff << "Paul"
staff << "John"
puts staff.last
# Answer = John
puts staff[ -1 ]
# Answer = John
puts staff[ staff.size - 1]
# Answer = John

# Show appending to the array, with push, << and unshift
history = []

history << "reddit.com" # Answer = reddit.com added to index 0
history << "facbook.com" # Answer = facebook.com added to index 1
history << "ebay.com" # Answer = ebay.com added to index 2

history.push "google.com" # Answer = google.com added to index 3

history.unshift "github.com" # Answer = github.com added to index 0 all above shifted by +1

# Show popping and shifting

puts "History:" # Answer = Just writes "History"
puts history # Answer = Writes current array [0=github.com,1=reddit.com,2=facebook.com,3=ebay.com,4=google.com]
puts "POP!" # Answer = Just writes POP!
puts history.pop # Answer = Removes google.com from end of the array and writes it to console.
puts "History:" # Answer = Just prints History
puts history # Answer = Prints new arrary minus popped value. [0=github.com,1=reddit.com,2=facebook.com,3=ebay.com]

puts "-" * 10 # Answer = Just prints "----------""

puts "Shifting" # Answer = Just writes "Shifting"
first = history.shift # Answer = Removes the first item in the array removes [0=github.com]
puts first.class # Answer = "String" Tells you what class the first item in the array is.
puts "History:" # Answer = Just writes "History"
puts history # Answer = Outputs the remaining array [0=reddit.com,1=facebook.com,2=ebay.com]

puts "-" * 10 # Answer = Just prints "----------""
# Show how include? works
puts "Do we have github? #{history.include? 'github.com'}" # Answer = "False"
puts "Do we have ebay? #{history.include? 'ebay.com'}" # Answer = "True"

found = false
# equivalent of 'include?' -
# note that found needs to be defined before!
history.each do |website|
  if website == 'ebay.com'
    found = true
  end
end
puts "Do we have ebay? #{found}" # Answer = "True"

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
puts "history as string: #{history.join(',') }"

candies_string = "candy lollipop snickers"
candies = "candy lollipop snickers".split(' ')
puts "Candies: #{candies_string}"
puts "Candies: #{candies}"


