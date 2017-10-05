class PinsController < ApplicationController

	include PinsHelper

	def index

		@pins = generate_pins(params[:page])

	end

end