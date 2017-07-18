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
	array = string.split(" ")
	array.map!a do |word|
		word.capitalize
	end
	array.join(" ")
end
