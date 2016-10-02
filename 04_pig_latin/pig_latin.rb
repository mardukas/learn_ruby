#write your code here
def translate (phrase)
	vowel = %w(a e i o u)

	first_word, *rest = phrase.split(' ')

	rest.insert(0, first_word)



	rest.map! do |x|

		if x == x.capitalize
			cap = true
		end

		x = x.downcase

		first_letter = x[0]
		second_letter = x[1]
		third_letter = x[2]

		if vowel.include?(first_letter)
			 x + "ay"
		elsif !vowel.include?(first_letter) && second_letter == 'q' && third_letter == 'u'
			final_phrase = x << x.slice!(0..2)
			 final_phrase + "ay"
		elsif first_letter == 'q' && second_letter == 'u'
			final_phrase = x << x.slice!(0..1)
			 final_phrase + "ay"
		elsif !vowel.include?(first_letter) && !vowel.include?(second_letter) && !vowel.include?(third_letter)
			final_phrase = x << x.slice!(0..2)
			 final_phrase + "ay"
		elsif !vowel.include?(first_letter) && !vowel.include?(second_letter)
			final_phrase = x << x.slice!(0..1)
			 final_phrase + "ay"
		elsif !vowel.include?(first_letter)
			final_phrase = x << x.slice!(0)
			 final_phrase + "ay"
		end
	end

	return rest.join(' ')

end