module Isogram
  # remove os hífens, separa por espaço cada palavra, junta tudo e depois separa de novo para formar um array com as
  # letras individuais, depois usa o método #uniq para comparar os dois arrays, se forem iguais, é um isograma
  def self.isogram?(input)
    letters_arr = input.downcase.gsub('-', '').split(' ').join('').split('')
    letters_arr.uniq == letters_arr
  end
end

print Isogram.isogram?("isogram")