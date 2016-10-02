class Book
# write your code here
	def title
		@title
	end

	def title=(title)
		articles = %w{the and of a an in}
		if title.count(" ") > 0
			words = title.split(" ")
			words[0] = words[0].capitalize #Always capitalize the first word

			words.map! do |x|
				if !(articles.include?(x))
					x.capitalize
				else
					x
				end
			end


			@title = words.join(' ')

		else 
			@title = title.capitalize
		end
	end
end
