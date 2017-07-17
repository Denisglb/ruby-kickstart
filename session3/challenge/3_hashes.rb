# Write a method that takes a string and returns a hash
# whose keys are all the downcased words in the string,
# and values are the number of times these words were seen.
#
# No punctuation will appear in the strings.
#
# Example:
# word_count "The dog and the cat" # => {"the" => 2, "dog" => 1, "and" => 1, "cat" => 1}

def word_count (string)
	hash = Hash.new(0)
	words =string.split(" ")

	words.each {|word| hash[word.downcase] += 1}
	
	return hash

end

print word_count "The dog and the cat"

# print word_count "The dog and the cat"

# def word_count (string)
# 	count = Hash.new {|this_hash, key| this_hash[key] = 0}
# 	
# string.split.each_char do |char|
# 	count[char] += 1
# end
