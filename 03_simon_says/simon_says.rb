#write your code here
def echo(string)
	string
end

def shout(string)
	string.upcase
end

def repeat(string, number = 2)
	new_string = string
	(number-1).times do
		new_string += " #{string}"
	end
	new_string
end

def start_of_word(string, number)
	string[0,number]
end

def first_word(string)
	array = string.split(" ")
	array[0]
end
def titleize (string)
	string.capitalize!
	do_not_cap = ["and", "or", "the", "over", "to", "a", "but", "for"]
	array = string.split(" ")
	array.map! do |word|
		if do_not_cap.include?(word)
			word
		else
			word.capitalize
		end
	end
	array.join(" ")
end
