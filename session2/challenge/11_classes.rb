# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example:
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method 
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
# Add any additional methods you find helpful.


class BeerSong
	attr_accessor :number_of_beers
	def initialize (number_of_beers)
		number_of_beers =0 if number_of_beers < 0
		number_of_beers = 99 if number_of_beers > 99
	end

	def print_song
		beers.downto 1 do |i|
			print_stanza i
		end
	end

	def print_stanza(n)
		if n.zero?
			String.new 
		else 
			puts "#{number_to_words n} #{bottle n} of beer on the wall,"
			"#{number_to_words n} #{bottle n} of beer,"
			"Take one down, pass it around,"
			"#{number_to_words number-1} #{bottle n-1} of beer on the wall"
 		end
	end

	def bottle(n)
		if n==1 then 'bottle' else 'bottles'end
	end


	def number_to_words(number)
		numbers = {
		90 => "Ninety",
		80 => "Eighty",
		70 => "Seventy",
		60 => "Sixty",
		50 => "Fifty",
		40 => "Fourty",
		30 => "Thirty",
		20 => "Twenty",
		19 => "Nineteen",
		18 => "Eighteen",
		17 => "Seventeen",
		16 => "Sixteen",
		15 => "Fifteen",
		14 => "Fourteen",
		13 => "Thirteen",
		12 => "Twelve",
		11 => "Eleven",
		10 => "Ten",
		9 => "Nine",
		8 => "Eight",
		7 => "Seven",
		6 => "Six",
		5 => "Five",
		4 => "Four",
		3 => "Three",
		2 => "Two",
		1 => "One",
		0 => "Zero",
		}
		
		to_return = ""
		number.each do |num, word| 
			if number == 0
				return to_return
			elsif number.to_s.length == 1 && number/num >0
				return to_return + "#{word} " if num%number ==0 
				return to_return + "#{word} " + number_to_words(number%num)
			elsif number/num > 0
				return to_return + number_to_words(int/num) + "#{word} " + in_words(int%num)
			end
			end
	end
end






