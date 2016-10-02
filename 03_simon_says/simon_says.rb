#write your code here
def echo (saying)
	return saying
end

def shout (saying)
	return saying.upcase
end

def repeat (saying, x = 1)

	if x <= 2
		times = 1
	else 
		times = x - 1
	end


	return saying + (" " + saying) * times
end

def start_of_word (word, x = 0)
	return word[0...x]
end

def first_word(phrase)
	words = phrase.split(" ")
	words[0]
end

def titleize(title)

	ignore = %w[and the of a over]

	first_word, *rest = title.split(' ')

	first_word.capitalize!

	if !rest.empty?
		rest.map! do |x|
			x.downcase

			if ignore.include?(x)
				x
			else
				x.capitalize
			end
		end

		return first_word + " "  + rest.join(' ')
	else 
		return first_word
	end


end