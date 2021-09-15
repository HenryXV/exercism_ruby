# https://exercism.org/tracks/ruby/exercises/log-line-parser/edit
class LogLineParser
  def initialize(line)
    @line = line
  end

  # remove qualquer palavra com 4 letras maiusculas ou mais (regexp não é meu forte) e depois tira os "[]:"
  def message
    log_level_str = @line.gsub(/[[:upper:]]{4,}/, '')
    log_level_str.delete_prefix("[]:").strip
  end

  # a mesma coisa, mas agora transformando para minuscula
  def log_level
    @line[/[[:upper:]]{4,}/].downcase
  end

  def reformat
    "#{self.message} (#{self.log_level})"
  end
end

puts LogLineParser.new("[WARNING]: Disk almost full\r\n").message
puts LogLineParser.new("[ERROR]: Invalid operation").log_level
puts LogLineParser.new("[INFO]: Operation completed").reformat


