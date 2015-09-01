class Airplane
  class Airplane

  	attr_reader :type, :wingloading, :horsepower
    attr_accessor :status, :airborn

  	def initialize(type, wingloading, horsepower)
  		@type = type
  		@wingloading = wingloading
  		@horsepower = horsepower
      @status = 'off'
  		@airborn = 'no'
  	end

  	def start
  		if status == 'off'
  			message = "airplane just started"
  			self.status = "on"
  		else status == "on"
  			message = "already started"
  		end
  	  message
  	end

  	def takeoff
  		if status == 'off'
  			message = "please start the airplane"
  		else status == "on"
  			message = "We have lift off"
  			self.airborn = 'yes'
  		end
  		message
  	end

  	def land
  		if status == 'off' && airborn == 'no'
  			message = "please start the airplane"
  		elsif status == 'on' && airborn == 'no'
  			message = "please take off"
  		else status == 'on' && airborn == 'yes'
  			message = "thank you for flying jake&jake air"
  		end
  		message
  	end
  end

end
