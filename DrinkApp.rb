#!/usr/bin/env ruby

class DrinkApp
drinkName = ""
drinkDescription = ""
wineType = ""
	def run
		puts "Would you like wine or water?"
		drinkName = gets.chomp

		if drinkName == "wine"
			puts "Would you like red or white wine?"
			drinkDescription = gets.chomp

			if drinkDescription == "red"
				puts "Would you like cabernet or pinot noir?"
				drinkDescription = gets.chomp
			elsif drinkDescription == "white"
				puts "Would you like moscato or pinot grigio?"
				drinkDescription = gets.chomp
			else
				puts "You have entered an invalid choice"
				exit
			end
		elsif drinkName == "water"
			puts "Would you like flat or sparkling water?"
			drinkDescription = gets.chomp
		else
			puts "You have entered an invalid choice."
			exit
		end

	drink = Drink.new(drinkName, drinkDescription)
	puts "Thank you. Please enjoy your " + drink.info
	end
end

class UI 
end

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
