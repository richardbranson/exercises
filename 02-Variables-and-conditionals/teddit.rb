def greeting
  puts "Welcome to teedit"
end

def print_story(story_title, current_upvotes)
  if story_title.include? 'cat'
    current_upvotes = current_upvotes * 2
  elsif story_title.include? 'pig'
    current_upvotes = current_upvotes / 2
  elsif story_title.include? 'candy'
    current_upvotes = current_upvotes + 1
  end

  puts "Story: " + story_title  + ". Upvotes: " + current_upvotes.to_s
end

def get_story
  puts "Please give me a story title:"
  gets.strip
end

def get_upvotes
  puts "Please give me current number of upvotes:"
  gets.strip.to_i
end

# The actuall thingo

greeting
story = get_story
upvotes = get_upvotes

print_story(story, upvotes)
