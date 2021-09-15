class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    production_rate = 221 * @speed
    if @speed >= 5 and @speed <= 8
      production_rate * 0.9
    elsif @speed == 9
      production_rate * 0.8
    elsif @speed == 10
      production_rate * 0.77
    else
      production_rate
    end
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).floor
  end
end
