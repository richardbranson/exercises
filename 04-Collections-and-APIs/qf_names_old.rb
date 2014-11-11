# List processing
#
# Write a method which accepts an array of names as an argument and
# returns a list of names and their associated lengths.

# Write a second method which accepts array returned by first one
# and prints out each name and its length. If the name is longer than 6
# characters the method needs to print out "Wow, that's a long name!"

classlist = []
classlist << "Richard"
classlist << "Jason"
classlist << "Rajan"
classlist << "Terry"
classlist << "Eugenie"
classtutors = []
classtutors << "Łukasz"
classtutors << "Laurent"

puts "#" * 50 
puts "#" * 22 + "START" + "#" * 23
puts "#" * 50
puts "Prints out each name and its length"
puts "Class Members are #{classlist} Class Size = #{classlist.size}"
puts "Class Tutors are #{classtutors}"
classlist.each do |name|
  puts "#{name} has #{name.size} letters in their name."
  puts ""
end
puts "#" * 50 
puts "#" * 22 + "END" + "#" * 25
puts "#" * 50