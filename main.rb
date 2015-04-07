$LOAD_PATH.unshift '.'

require 'curses'
require 'ui'
require 'game'
include Curses

Game.new.run
