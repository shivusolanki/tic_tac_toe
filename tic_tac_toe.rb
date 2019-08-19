require_relative 'board.rb'
require_relative 'players.rb'

class Game
	attr_reader :board, :player1, :player2

	def self.start
		new.start
	end

	def initialize
		@board = Board.new
	end

	def start
		puts "let the game begin"

		@player1 = Player.new('X')
		@player2 = Player.new('O')

		play
		puts "\nGame over"
	end

	def play
		board.board_state
		until board.game_over?
			player1.choose_spot(board)
			player2.choose_spot(board) if !game_over?
			board.board_state
		end
	end
end