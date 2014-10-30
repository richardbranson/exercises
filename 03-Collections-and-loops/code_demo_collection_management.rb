# Lets practice accessing elements of collections
# If you call `puts` without any parameters, it will output an empty line
# Use that to space out your output nicely

# Print the name of each of the 3 stooges
stooges = ["Larry", "Curly", "Moe"]

# This works with Hashes as well
time_travelers = {the_doctor: "TARDIS",
                  hermione: "Time Turner",
                  marty_mcfly: "Delorian"}

# What about an array of hashes?
tv_shows = [
  {"show_name" => "Doctor Who", "protagonist" => "The Doctor and his companions"},
  {"show_name" => "Buffy The Vampire Slayer", "protagonist" => "Buffy and the Scooby Gang"},
  {"show_name" => "The Walking Dead", "protagonist" => "Rick and his fellow survivors"}
]

# What about a hash with an array as a value?

recipe = {name: "Key Lime Pie",
          description: "Key lime pie is an American dessert made of key lime juice, egg yolks, and sweetened condensed milk in a pie crust.",
          ingredients: ["Eggs",
                        "Key lime juice",
                        "Condensed Milk",
                        "Graham cracker crust"]
}

# A real example of a complex collection
#
tweets = {
  "results" =>[
    {
      "from_user" => "SFist",
      "text" => "Reminder: Blue Angels practice today http://t.co/L9JXJ2ee",
    },

    {
      "from_user" => "hipsterhacker",
      "text" => "I'm rewriting git in Javascript.",
    },

    {
      "from_user" => "everyword",
      "text" => "éclairs"
    },
  ]
}

# Print all tweets with some nice formatting
