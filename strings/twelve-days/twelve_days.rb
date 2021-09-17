module TwelveDays
  PRESENTS = {first: "a Partridge in a Pear Tree.",
              second: "two Turtle Doves",
              third: "three French Hens",
              fourth: "four Calling Birds",
              fifth: "five Gold Rings",
              sixth: "six Geese-a-Laying",
              seventh: "seven Swans-a-Swimming",
              eighth: "eight Maids-a-Milking",
              ninth: "nine Ladies Dancing",
              tenth: "ten Lords-a-Leaping",
              eleventh: "eleven Pipers Piping",
              twelfth: "twelve Drummers Drumming"}.freeze
  def self.song
    all_presents = []
    song_lyrics = []
    PRESENTS.each do |k, v|
      if v == "two Turtle Doves"
        all_presents[0] = "and a Partridge in a Pear Tree."
      end
      all_presents.insert(0, v)
      song_lyrics.push("On the #{k} day of Christmas my true love gave to me: #{all_presents * ", "}")
    end
    song_lyrics * "\n\n" + "\n"
  end
end