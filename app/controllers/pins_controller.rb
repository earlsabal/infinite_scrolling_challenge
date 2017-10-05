class PinsController < ApplicationController

	ALL_PINS = JSON.parse(File.read("pins_formatted.json"))
	START_PAGE = 1
	PER_PAGE = 5

	def index

		@pins = generate_pins(params[:page])

	end

	private
	def generate_pins(page)

		current_pins = ALL_PINS.paginate(page: page, per_page: PER_PAGE)
		if current_pins.next_page == nil
			current_pins = reset_pins(current_pins)
		end
		current_pins

	end

	def reset_pins(ending_pins)

		resetted_pins = ending_pins + ALL_PINS
		per_page = ending_pins.size + PER_PAGE
		resetted_pins.paginate(page: START_PAGE, per_page: per_page)

	end

end