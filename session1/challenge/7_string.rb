# given a string, return the character after every letter "r"
# 
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
to_return= ""
add_next =false

string.length.times do |index|
	current_character = string[index]
	to_return << current_character if add_next
	add_next = (current_character=="r" || current_character == "R")
end
to_return

end

puts pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
puts pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
puts pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"