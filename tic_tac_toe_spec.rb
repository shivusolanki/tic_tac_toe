require_relative "tic_tac_toe.rb"

describe Tic_Tac_Toe do
  before(:each) do
    @T = TicTacToe.new
  end 
	it "initially board should be empty" do
		expect(@T.board.empty?).to be true
	end

	it "should have two players only" do
		expect(@T.no._of_player).to eql 2
	end 

	describe "choice player makes" do
		it " move should be valid "do
		expect(@T.move_valid?).to be true
		end 
		
		it " player2 place their token to only one square which is not filled by player1" do
		expect(@T.position_taken?(6)).to be false 
		end
	end

	describe " win" do
		it "all the field of top row should be filled" 
		

		it "all the field of middle row should be filled" 
		

		it "all the field of bottom row should be filled " 
		

		it "all the field of left column should be filled" 
		

		it "all the field of right column should be filled" 
		

		it " all the field of middle column should be filled" 
		

		it " all the field of left diagonal should be filled" 
		

		it " all the field of right diagonal should be filled" 
		
	end

	describe "tie" do
		it " if a player win"
                    
		it "when all the fields are filled but no win" 
		
	end
end