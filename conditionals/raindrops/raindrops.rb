module Raindrops

  def self.convert(rain)
    drop_sound = []
    if rain % 3 == 0
      drop_sound.push("Pling")
    end
    if rain % 5 == 0
      drop_sound.push("Plang")
    end
    if rain % 7 == 0
      drop_sound.push("Plong")
    end
    if rain % 3 != 0 and rain % 5 != 0 and rain % 7 != 0
      drop_sound.push(rain)
    end
    drop_sound.join('')
  end
end