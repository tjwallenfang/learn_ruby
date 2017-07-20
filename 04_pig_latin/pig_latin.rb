#write your code here
def translate(str)
	vowels = ["a", "e", "i", "o", "u"]
	punctuation = [".", ",", "!", "?"]
	array = str.split(" ")
	array.map! do |str|
		#check if string is capitalized and remember
		if is_upper(str)
			is_capitalized = true
		else
			is_capitalized = false
		end
		#remove and remember any punctuation at the end of string to put back later
		if punctuation.include?(str[-1])
			str_punctuation = str.slice!(-1)
		else
			str_punctuation = ""
		end
		#loop to switch letters until a vowel leads
		while (not vowels.include?(str.downcase[0]))
			#treat "qu" as single phoneme 
			if (str[0].downcase == "q" && str[1].downcase == "u")
				i = 2
			else
				i = 1
			end
			i.times do
				first = str[0]
				str.slice!(0)
				str << first
			end
		end
		if is_capitalized
			str.capitalize!
		end
		str << "ay" << str_punctuation

	end
	array.join(" ")
end

def is_upper(str)
	str == str.capitalize
end

#puts translate('The apple, Was Good.')