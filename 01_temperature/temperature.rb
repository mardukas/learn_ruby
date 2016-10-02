#write your code here
def ftoc (temp)
	((temp-32) * 0.5556).to_i
end

def ctof (temp)
	((temp * 9) / 5.0).round(1) + 32

end

