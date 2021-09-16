module Luhn
  def self.valid?(numbers)
    # remove espaços
    numbers.gsub!(' ', '')

    # confere se o número possui qualquer coisa além de números ou se ele possui apenas 1 dígito
    unless numbers.match?(/\D/) || numbers.length == 1
      numbers_arr = numbers.reverse!.chars # reverte e separa os dígitos em um array
      numbers_arr.map! {|n| n.to_i} # transforma de string para integer
      (1...numbers_arr.length).step(2) {|i| print numbers_arr[i] *= 2} # usa um range para multiplicar a cada 2 números
      numbers_arr.map! do |n| # confere se o dígito é maior que 9 e se sim, subtrai 9
        n > 9 ? n - 9 : n
      end
      numbers_arr.sum {|n| n} % 10 == 0 # soma todos os dígitos e confere se é igualmente divísivel por 10
    end
  end
end