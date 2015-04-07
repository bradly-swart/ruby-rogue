$LOAD_PATH.unshift '.'

require 'curses'
require 'awesome_print'
require 'yaml'
require 'pry'
require 'ui'
require 'role'
require 'data_loader'
require 'messages'
require 'selection_screen'
require 'title_screen'
require 'game'

include Curses

Game.new.run
