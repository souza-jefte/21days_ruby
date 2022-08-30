class AssemblyLine
  NUMBER_CARS = 221
  
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    #speed esta entre 0 e 5
    if @speed > 0  and @speed < 5
      @speed * NUMBER_CARS * 1
    #speed esta entre 4 e 9
    elsif @speed > 4 and @speed < 9
      @speed * NUMBER_CARS * 0.9
    #speed corresponder a 9
    elsif @speed == 9
      @speed * NUMBER_CARS * 0.8
    else
      @speed * NUMBER_CARS * 0.77
    end 
  end

  def working_items_per_minute
    division = production_rate_per_hour / 60.0
    division.floor
  end
end
