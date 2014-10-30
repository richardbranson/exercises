something=""
while something != "BYE"
    puts "Say something to Grandma!"
    something = gets.chomp
    if something == something.upcase
      puts "NO, NOT SINCE 19" + (rand(30..50)).to_s + "!"
    else
      puts "HUH? SPEAK UP SONNY!"
    end
end