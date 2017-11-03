class UI
	def initialize()
	end

	def UI.prompt(*args)
		puts *args
		print("> ")
	end

	def wine_or_water_message
		puts "Would you like wine or water?"
		print("> ")
	end

	def wine_type_message
		puts "Would you like red or white wine?"
		print("> ")
	end

	def red_wine_message
		puts "Would you like cabernet or pinot noir?"
		print("> ")
	end

	def white_wine_message
		puts "Would you like moscato or pinot grigio?"
		print("> ")
	end

	def water_type_message
		puts "Would you like flat or sparkling water?"
		print("> ")
	end

	def invalid_message
		puts "You have entered an invalid choice"
		print ("> ")
	end

	def thank_you(drink_info)
		puts "Thank you. Please enjoy your #{drink_info}"
	end
end