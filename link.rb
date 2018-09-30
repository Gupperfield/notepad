class Link < Post

  def initialize
    super

    @url = ""

  end

  def read_from_console
    puts "Введите адрес ссылки"
    @url = STDIN.gets

    puts "Что за ссылка?"
    @text = STDIN.gets
  end

  def to_strings
    time_string = "Создано: #{@created_at.strftime("%Y-%m-%d, %H:%M:%S")} "

    return [@url, @text, time_string]

  end
end