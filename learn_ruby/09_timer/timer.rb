class Timer
	attr_accessor :seconds
	def initialize(seconds=0)
		@seconds = 0
	end

	def time_string
		hours = 0
		minutes = 0
		seconds = 0


		seconds = @seconds % 60 
		minutes = @seconds / 60

		if minutes > 59
			hours = minutes / 60
			minutes = minutes % 60
		end

		hours   = hours.to_s
		minutes = minutes.to_s
		seconds = seconds.to_s

		tiempo = [hours, minutes, seconds]

		i = 0
		for xxx in tiempo

			if tiempo[i].length == 1
				tiempo[i] = "0" + tiempo[i]
				puts ">>>"
				puts xxx
			else
				tiempo[i] = tiempo[i]
			end
			i += 1
		end

		@seconds = tiempo[0] + ":"+tiempo[1] +":"+ tiempo[2]
		@seconds
	end

# seconds % 60 me da segundos
# seconds / 60 me da minutos
# minutos % 60 me da horas
end

tiempo = Timer.new
tiempo.seconds = 4000
puts tiempo.seconds
puts tiempo.time_string