
beers = [
   { name: "Becks", percentage: 4 },
   { name: "Steela", percentage: 5 } ,
   { name: "Peroni", percentage: 8 },
   { name: "Carslberg", percentage: 7 }
]

puts beers

beers.each do |beer|
  if beer[:name] == 'Peroni'
    beer[:percentage] += 1
    beer[:percentage] = beer[:percentage] + 1
  end
  puts "Beer: #{beer[:name]} has #{beer[:percentage]}%"
end

puts beers
