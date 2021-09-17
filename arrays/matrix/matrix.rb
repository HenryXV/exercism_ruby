class Matrix
  def initialize(matrix)
    @matrix = matrix
    @rows = []
  end

  def rows
    # separa cada linha pelo símbolo de newline "\n" e adiciona na lista "rows"
    @matrix.split("\n").each {|r| @rows.push(r.split(" "))}

    # transforma para de string para integer
    @rows.each {|r| r.each_index {|i| r[i] = r[i].to_i}}
  end

  def columns
    rows.transpose
  end
end
