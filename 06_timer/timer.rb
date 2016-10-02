class Timer
  #write your code here
	def seconds
		@seconds
	end

	def initialize
		@seconds = 0
	end

	def time_string
		Time.at(@seconds).strftime("%H:%M:%S:%N")
	end

	def seconds=(secs)
		@seconds = secs
	end


end
