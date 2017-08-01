class Book
# write your code here
	attr_accessor :title

	def title
		not_capitalized = ['the', 'a', 'an', 'and', 'of', 'or', 'in']
		words = @title.split(" ")
		words.map! do |word|
			if not not_capitalized.include?(word) 
				word.capitalize
			else
				word
			end
		end
		words[0].capitalize!
		@title = words.join(" ")
	end
end
