people = { }

puts people

people[:lukasz] = "Lukasz Korecki"

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

puts 'bringin it back'
colors['blue'] = '#00f'

puts colors

people = [
  [ "Mark", "Janitor"],
  [ "John", "CEO"]
]

people = [
  { name: "Mark" , role: "Janitor" },
  { name: "John", role: "CEO" }
]
