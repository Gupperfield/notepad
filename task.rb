require "date"

class Task < Post

  def initialize
    super

    @due_date = Time.now
  end

  def read_from_console
    puts "Новая задача"
    @text = STDIN.gets

    puts "Введите дэдлайн в формате ДД-ММ-ГГГГ"
    input = STDIN.gets

    @due_date = Date.parse(input)
  end

  def to_strings
    time_string = "Создано: #{@created_at.strftime("%Y-%m-%d, %H:%M:%S")} "
    deadline = "Крайний срок: #{@due_date}"

    return [deadline, @text, time_string]
  end
end