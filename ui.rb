# UI Class
class UI
  include Curses

  def initialize
    noecho # do not print characters the user types
    init_screen
  end

  def close
    close_screen
  end

  def message(x, y, string)
    # positions the cursor - notice the order of the arguments!
    setpos(y, x)
    addstr(string) # prints a string at cursor position
  end

  def choice_prompt(x, y, string, choices)
    message(x, y, string + ' ')

    loop do
      choice = getch
      return choice if choices.include?(choice)
    end
  end
end
