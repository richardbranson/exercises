require 'rest_client'
require 'json'
require 'pp'

# Get weather information for given url
def get_weather_json(city)
	api_url = "http://api.openweathermap.org/data/2.5/weather?q=#{city}"
	RestClient.get(api_url).to_str
end

def parse_weather_response(weather_json)
	JSON.parse(weather_json)
end

def convert_temperature(value)
	(value - 273.15).round(2)
end


def print_weather(weather_info)
	temperature = weather_info['main']['temp']
	temp_in_C = convert_temperature(temperature)

	# pp weather_info
	weather_conditions = weather_info['weather'].first['description']
	name = weather_info['name']
	puts "Current weather conditions in #{name} are: #{temp_in_C}C and #{weather_conditions}"
end

json = get_weather_json('nyc')
puts "Here's parsed JSON as Ruby Hash:"
weather_info = parse_weather_response(json)
#This
puts weather_info['coord']['lon'].class
# Equivilent
coord = weather_info['coord']
puts coord['lon'].class

print_weather(weather_info)