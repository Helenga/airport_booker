class FlightController < ApplicationController
include FlightHelper

	def index
		@dates_of_departure = get_uniq_dates
		if params[:flight].nil?
			@flights = Flight.order(:departure).all
			render 'index'
		else
			@suitable_flights = choose_flights
			@tickets = params[:number_of_passengers]
			render 'choose_flights'
		end
	end
	
	def show
		@flight = Flight.find_by_id(params[:id])
	end
	
private
	
	def flight_params
		params.require(:flight).permit(:from_airport, :to_airport,
								:departure)
	end
	
end
