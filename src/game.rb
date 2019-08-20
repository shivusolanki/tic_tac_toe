require_relative 'board.rb'
require_relative 'players.rb'

class Game
	attr_reader :board, :player1, :player2

	def self.start
		new.start
	end

	def initialize
		@board = Board.new
		@player1 = Players.new('X')
		@player2 = Players.new('O')
	end

	def start
		puts
		puts "***Let the game begin***"
		puts

		play

		won_or_tie?(board)
		puts
		print "Wanna play again (y/n) ? : "
		restart = gets.chomp

		if (restart == "y" || restart == "Y")
			@board = Board.new
			Game.start
		else
			puts
			puts "bye bye!!"
			exit
		end
	end

	def play
		board.board_state
		until board.game_over?
			player1.choose_spot(board, 'X')
			board.board_state
			player2.choose_spot(board, 'O') if !board.game_over?
			board.board_state
		end
	end

	private

	def won_or_tie?(board)
		if board.won?
	  	winner = board.player_win
		  puts "player with token [ #{winner} ] is winner!!"
			puts "\nGAME OVER"
		else 
			puts "Game is tie !!"
			puts "\nGAME OVER"
		end
	end
end