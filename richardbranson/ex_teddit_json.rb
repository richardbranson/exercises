# We're going to add a remote data source to pull in stories from Mashable and Digg.
# https://www.reddit.com/hot/.json
# http://digg.com/api/news/popular.json
# These stories will also be upvoted based on our rules. No more user input!
#
# Pull the json, parse it and then make a new story hash out of each story(Title, Category, Upvotes)
# Add each story to an array and display your "Front page"

require 'json'
require 'rest_client'
require 'pp'


def greeting
	puts "Welcome to Jeddit.\nCollecting stories..."
end


def get_reddit_json
	reddit_url = "https://www.reddit.com/hot/.json"
	RestClient.get(reddit_url).to_s 
end


def parse_reddit_response(raw_reddit_json)
	JSON.parse(raw_reddit_json)
end


def compile_collection(parsed_reddit_json)
	stories = []

	##### check it's full here: 
	# pp parsed_reddit_json
	parsed_reddit_json['data']['children'][0..10].each do |item|

		story_hash = {}
		story_hash[:title] = item['data']['title'].strip
		story_hash[:category] = item['kind'].strip
		story_hash[:upvotes] = 1
		if story_hash[:category].include? 'cat'
			story_hash[:upvotes] = story_hash[:upvotes] *2
		elsif story_hash[:category].include? 'pig'
			story_hash[:upvotes] = story_hash[:upvotes] /2
		elsif story_hash[:category].include? 'candy'
			story_hash[:upvotes] = story_hash[:upvotes] +10
		end
		
		 stories << story_hash
	end

stories
end


def print_collection(stories)
#####   temporary: output the whole lot
	puts "debug: there should be a full array here: #{stories}"

##### real thing
#	stories.each do 
#		puts "#{story_hash[:title]}\nCategory:#{story_hash[:category]\nUpvotes:#{story_hash[:upvotes]\n\n"
#	end
end

	




#show greeting
greeting

#get json set up
json = get_reddit_json
reddit_info = parse_reddit_response(json)

##### error testing - should be a big output
#pp reddit_info

##### do the thing
pileofstories = compile_collection(reddit_info)
#pp pileofstories
print_collection(pileofstories)