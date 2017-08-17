class Timer
  #write your code here
  def initialize
  	@seconds = 0
  end
  attr_accessor :seconds

  def seconds
  	@seconds
  end

  def time_string
  	timeString = []
  	hours = @seconds/3600
  	timeString.push(padded(hours))
  	left = @seconds - hours*3600
  	minutes = left/60
  	timeString.push(padded(minutes))
  	seconds = left - minutes*60
  	timeString.push(padded(seconds))
  	timeString.join(":")
  end

  def padded(num)
  	if num.to_s.length == 2
  		num.to_s
  	elsif num.to_s.length == 1
  		num.to_s.prepend("0")
  	end
  end
  			


end
