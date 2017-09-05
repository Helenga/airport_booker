module FlightHelper

	def get_uniq_dates
		flight = Flight.select('departure')
		array_of_dates = flight.map{|f| f.departure.strftime("%F")}
		array_of_dates.uniq
	end
	
	def choose_flights
		Flight.select('id', 'route', 'from_airport_id', 'to_airport_id', 'departure').
		where("from_airport_id = :from AND to_airport_id = :to AND departure::text LIKE :date",
			{from: params[:flight][:from_airport], to: params[:flight][:to_airport],
			 date: "#{params[:flight][:departure].to_i(10)}%"})
	end
	
	
end
