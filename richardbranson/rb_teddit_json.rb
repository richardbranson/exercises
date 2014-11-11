require 'rest_client'
require 'json'
def show_message(message)
  puts message
end
def show_new_story_notification(story, category, upvotes)
  show_message("NEW STORY ADDED! #{story}, \nCATEGORY: #{category.capitalize}, \nCURRENT UPVOTES: #{upvotes}")
    puts " " * 20 + "- " * 20 + " " * 20
end
def calculate_upvotes(story, category)
  upvotes = 10
    upvotes *= 50 if category.downcase.include?('news')
    upvotes *= 80 if category.downcase.include?('movies')
    upvotes *= 30 if category.downcase.include?('explainlikeimfive')
    upvotes *= 15 if story.downcase.include?('interesting')
    upvotes *= 17 if story.downcase.include?('funny')
    upvotes *= 17 if category.downcase.include?('jokes')
  upvotes
end
def build_story(title, category, upvotes)
  {
    title: title,
    category: category,
    upvotes: upvotes
  }
end
def get_stories_from_reddit    #when naming array, use plural...stories
  stories = []
  reddit_response = RestClient.get('http://reddit.com/.json')
  reddit_data = JSON.load(reddit_response)
  reddit_data['data']['children'].each do |child|       #child is arbitrary code name on the fly; ok in .each method
    data = child['data']
    title = data['title']
    category = data['subreddit']
    upvotes = calculate_upvotes(title, category)
    story = build_story(data['title'], data['subreddit'], upvotes)
    stories << story
  end
 
  stories
end
def print_stories(stories)
  stories.each do |story|
    show_new_story_notification(story[:title], story[:category], story[:upvotes])
  end
end
###### RUN ORDER ######
show_message("Welcome to RB Teddit! a text based news aggregator. Get today's news tomorrow!")
stories = get_stories_from_reddit
stories
print_stories(stories)