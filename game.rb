require 'title_screen'
# Game Class
class Game
  TRAITS = [Role]

  def initialize
    @ui = UI.new
    @options = { quit: false, randall: false }
    at_exit do
      ui.close
      ap options
    end
  end

  def run
    title_screen
    setup_character
  end

  private

  attr_reader :ui, :options

  def title_screen
    TitleScreen.new(ui, options).render
    quit?
  end

  # def selection_screen
  #   SelectionScreen.new(Role, ui, options).render
  # end

  def quit?
    exit if options[:quit]
  end

  def setup_character
    get_traits
  end

  def get_traits
    TRAITS.each do |trait|
      binding.pry
      SelectionScreen.new(trait, ui, options).render
      quit?
    end
  end
end
