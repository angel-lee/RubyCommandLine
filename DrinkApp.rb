# create Drink class
class Drink
	attr_accessor :name, :description

	def initialize(name, description)
		@name = name
		@description = description 
	end

	def info
		"#{description} #{name}"
	end
end

drinkName = ""
drinkDescription = ""

puts "Would you like wine or water?"
drinkName = gets.chomp

if drinkName == "wine"
	puts "Would you like red or white wine?"
	drinkDescription = gets.chomp
elsif drinkName == "water"
	puts "Would you like flat or sparkling water?"
	drinkDescription = gets.chomp
else
	puts "You have entered an invalid choice."
	exit
end

drink = Drink.new(drinkName, drinkDescription)
puts "Thank you. Please enjoy your " + drink.info