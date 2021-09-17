module Nucleotide
  def self.from_dna(dna_strand)
    raise ArgumentError if dna_strand.match(/[^ACGT+]/)

    dna_strand.chars.tally
  end
end
