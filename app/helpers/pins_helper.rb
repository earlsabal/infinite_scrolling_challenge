module PinsHelper

	# CONTROLLER

	ALL_PINS = JSON.parse(File.read("pins_formatted.json"))
	START_PAGE = 1
	PER_PAGE = 5

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

	# VIEWS

	def pin_image(pin)	
		image_tag(pin["images"]["236x"]["url"])
	end

	def pin_description(pin)
		pin["description"]
	end

	def pinner_username(pin)
		pin["pinner"]["username"]
	end

	def pinner_pic(pin)
		image_tag( pin["pinner"]["image_small_url"] )
	end

	def pin_created_at(pin)
		pin["created_at"]
	end

end