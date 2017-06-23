class Timer
  #write your code here
  def initialize
    @seconds = 0
    @minutes = 0
    @hours = 0
  end

  attr_accessor :seconds, :minutes, :hours

  def time_string
    sec_s = @seconds % 60
    min_s = (@seconds / 60) % 60
    hour_s = (@seconds/ 3600) % 60
    # @time_string = @hours.to_s + ":" + @minutes.to_s + ":" + @hours.to_s
    time_array = [hour_s,min_s,sec_s,]
    time_array = time_array.map do |val|
      if val > 10
        val = val.to_s
      else
        val = "0" + val.to_s
      end
    end

    @time_string = time_array.join(':')
  end

end

tster = Timer.new
tster.seconds = 4000
puts tster.seconds
puts tster.time_string
