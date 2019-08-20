require_relative "../src/board.rb"

describe Board do
  before(:each) do
    @b = Board.new
  end  

  it "test board spots" do
    expect(@b.spots).to match_array(['0','1','2','3','4','5','6','7','8'])
  end 

  it "test board choose spot" do
  	expect(@b.spots[2]).to eql("2")
    @b.choose_spot(2,"X")
    expect(@b.spots[2]).to eql("X")
  end

  it "test won" do
    expect(@b.won?).to be false
    choose_3_spot(@b)
    expect(@b.won?).to be true
  end 

  it "test tie" do
    # skip
    expect(@b.tie?).to be false
    choose_all_spots(@b)
    expect(@b.tie?).to be true
  end

  it "test full?" do
    # skip
    expect(@b.full?).to be false
    choose_all_spots(@b)
    expect(@b.full?).to be true
  end
  
  it "test game over when one player won" do
    expect(@b.game_over?).to be false
    choose_3_spot(@b)
    expect(@b.game_over?).to be true
  end

  it "test game over when their is a tie" do
    # skip
    expect(@b.game_over?).to be false
    choose_all_spots(@b)
    expect(@b.game_over?).to be true
  end

  it "test chosen_spot?" do
    expect(@b.chosen_spot?(1)).to be false
    @b.choose_spot(1,"X")
    expect(@b.chosen_spot?(1)).to be true
  end

  it " test not_chosen_spot?" do
    expect(@b.not_chosen_spot?(1)).to be true
    @b.choose_spot(1,"X")
    expect(@b.not_chosen_spot?(1)).to be false
  end

  it "test turn_count?" do
    expect(@b.turn_count?).to eql 0
    choose_3_spot(@b)
    expect(@b.turn_count?).to eql 3
  end

  it "test player_win" do
    choose_3_spot(@b)
    expect(@b.player_win).to eql "X"
  end

  private

  def choose_all_spots(board)
    board.choose_spot(0, "X")
    board.choose_spot(1, "O")
    board.choose_spot(2, "X")
    board.choose_spot(3, "O")
    board.choose_spot(4, "O")
    board.choose_spot(5, "X")
    board.choose_spot(6, "X")
    board.choose_spot(7, "X")
    board.choose_spot(8, "O")
  end

  def choose_3_spot(board)
    board.choose_spot(1,"X")
    board.choose_spot(0,"X")
    board.choose_spot(2,"X")
  end 
end