#!/usr/bin/env ruby
require "./ui.rb"
require "./drink.rb"


def run
    drink_name = ""
    drink_description = ""
    @ui = UI.new

    @ui.wine_or_water_message
    drink_name = gets.chomp

	if drink_name == "wine"
		@ui.wine_type_message
		drink_description = gets.chomp

		if drink_description == "red"
			@ui.red_wine_message
			drink_description = gets.chomp
		elsif drink_description == "white"
			@ui.white_wine_message
			drink_description = gets.chomp
		else
			@ui.invalid_message
			exit
		end
	elsif drink_name == "water"
		@ui.water_type_message
		drink_description = gets.chomp
	else
		@ui.invalid_message
		exit
	end

drink = Drink.new(drink_name, drink_description)
@ui.thank_you(drink.info)
end

run
