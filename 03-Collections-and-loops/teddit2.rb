people = { }

puts people

people [ :richard ] = "Richard Branson"

puts people

colors = {
  red: "#f00",
  green: "#0f0",
  blue: "#00f"
  }

puts colors.size
puts "keys: #{colors.keys}"
puts "values: #{colors.values}"

puts "Deleting!"
puts colors.delete :blue
puts colors