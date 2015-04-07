require 'title_screen'
# Game Class
class Game
  def initialize
    @ui = UI.new
    @options = { quit: false, randall: false }
    at_exit do
      ui.closep
      options
    end
  end

  def run
    title_screen
  end

  private

  attr_reader :ui, :options

  def title_screen
    TitleScreen.new(ui, options).render
    quit?
  end

  def quit?
    exit if options[:quit]
  end
end
