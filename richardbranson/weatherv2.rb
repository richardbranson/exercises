require 'rest_client'
require 'json'
require 'pp'


# Get weather information for given url
def get_weather_json(city)
	puts "Please type a city name?"
	city = gets.strip
	api_url = "http://api.openweathermap.org/data/2.5/weather?q=#{city}"
	RestClient.get(api_url).to_str
end

def parse_weather_response(weather_json)
	JSON.parse(weather_json)
end
def convert_temperature(value)
	(value - 273.15).round(2)
end
def convert_temperature_min(value)
	(value - 273.15).round(2)
end
def convert_temperature_max(value)
	(value - 273.15).round(2)
end
def print_weather(weather_info)
	name = weather_info['name']
	weather_conditions = weather_info['weather'].first['description']
	temperature = weather_info['main']['temp']
	temp_min = weather_info['main']['temp_min']
	temp_max = weather_info['main']['temp_max']
	country = weather_info['sys']['country']
	wind_speed = weather_info['wind']['speed']
	temp_in_C = convert_temperature(temperature)
	temp_min_in_C = convert_temperature_min(temp_min)
	temp_max_in_C = convert_temperature_max(temp_max)
	
	puts "_" * 80
	puts "|" + (" " * 78) + "|"
	puts "|     The current weather condition in #{name}, #{country} is: #{temp_in_C}C and #{weather_conditions}"
	puts "|     #{temp_in_C}°С temperature from #{temp_min_in_C}°С low to a #{temp_max_in_C}°С high, wind #{wind_speed}m/s."
	puts "|" + ("_" * 78) + "|"
end

json = get_weather_json('city') # Argument is city name.
# puts "Here's parsed JSON as Ruby Hash:"
weather_info = parse_weather_response(json)
#This
# puts weather_info['coord']['lon'].class
# Equivilent
# coord = weather_info['coord']
# puts coord['lon'].class

print_weather(weather_info)