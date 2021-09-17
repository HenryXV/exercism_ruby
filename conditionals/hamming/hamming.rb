module Hamming
  def self.compute(dna_1, dna_2)
    raise ArgumentError if dna_1.length != dna_2.length
    dna_1_arr = dna_1.chars
    dna_2_arr = dna_2.chars

    hamming_distance = 0
    dna_1_arr.each_index {|i| hamming_distance += 1 if dna_1_arr[i] != dna_2_arr[i]}
    hamming_distance
  end
end

puts Hamming.compute('GGACGGATTCTG', 'AGGACGGATTCT')