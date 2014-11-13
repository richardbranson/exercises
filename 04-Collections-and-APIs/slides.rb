
deck_01 = [
  "intro",
  "agenda",
  "lab",
  "example",
  "homework"
]

def show_deck(deck)
  deck.each do |slide|
    puts slide
  end
end

show_deck(deck_01)
show_deck(deck_02)
