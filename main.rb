$LOAD_PATH.unshift '.'

require 'curses'
require 'ui'
require 'game'
require 'yaml'
require 'data_loader'
require 'messages'

include Curses

Game.new.run
