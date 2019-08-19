class Board

	attr_reader :spots

	def initialize
		@spots = ['0','1','2','3','4','5','6','7','8']
	end

	def choose_spot(index, mark)
		spots[index] = mark
	end

	def won?
	  [spots[0], spots[1], spots[2]].uniq.size == 1 ||
    [spots[3], spots[4], spots[5]].uniq.size == 1 ||
    [spots[6], spots[7], spots[8]].uniq.size == 1 ||
    [spots[0], spots[3], spots[6]].uniq.size == 1 ||
    [spots[1], spots[4], spots[7]].uniq.size == 1 ||
    [spots[2], spots[5], spots[8]].uniq.size == 1 ||
    [spots[0], spots[4], spots[8]].uniq.size == 1 ||
    [spots[2], spots[4], spots[6]].uniq.size == 1
	end

	def tie?
		if (full && !won?)
			true
		else
		 false
		end
	end

	def full
		spots.all? {|spot| spot == 'X' || spot == '0'}
	end
				
	def game_over?
		if won? || tie?
			true
		else
			false
		end
	end


	def chosen_spot?(spot)
		spots[spot] == 'X' || spots[spot] == 'O'
	end

	def not_chosen_spot?(spot)
		spots[spot] != 'X' && spots[spot] != 'O'
	end

	def board_state
  	puts " #{spots[0]} | #{spots[1]} | #{spots[2]} \n===+===+===\n #{spots[3]} | #{spots[4]} | #{spots[5]} \n===+===+===\n #{spots[6]} | #{spots[7]} | #{spots[8]} \n\n"
  end
end


