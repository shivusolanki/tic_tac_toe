class Players
	attr_reader :mark

	def initialize (mark)
		@mark = mark
	end

	def choose_spot(board,mark)
		spot = get_spot(board, mark)
		board.choose_spot(spot,mark)
	end

	def get_spot(board,mark)
		print "player with token [ #{mark} ] Enter [0-8]  :"
		spot = gets.chomp
		spot = spot.to_i if from_0_to_8?(spot)
		puts

		while !spot.is_a?(Integer) || board.chosen_spot?(spot)
			puts "\n You entered '#{spot}'."
			puts "this spot maybe chosen or not present in the board"
			puts "Enter [0-8]: "
			spot = gets.chomp
			spot = spot.to_i if from_0_to_8?(spot)
			puts
		end

		spot
	end

	private

	def from_0_to_8?(spot)
		spot == '0' ||
		spot == '1' ||
		spot == '2' ||
		spot == '3' ||
		spot == '4' ||
		spot == '5' ||
		spot == '6' ||
		spot == '7' ||
		spot == '8' 
	end
end