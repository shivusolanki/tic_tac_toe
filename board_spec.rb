require_relative "board.rb"

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
    @b.choose_spot(0,"X")
    @b.choose_spot(1,"X")
    @b.choose_spot(2,"X")
    expect(@b.won?).to be true
    end 

  it "test tie" do
    skip
    expect(@b.tie?).to be false
    @b.choose_spot(0, "X")
    @b.choose_spot(1, "O")
    @b.choose_spot(2, "X")
    @b.choose_spot(3, "O")
    @b.choose_spot(4, "O")
    @b.choose_spot(5, "X")
    @b.choose_spot(6, "X")
    @b.choose_spot(7, "X")
    @b.choose_spot(8, "O")
    expect(@b.full?).to be true
  end
  
  it "test game over when one player won" do
    expect(@b.game_over?).to be false
    @b.choose_spot(0,"X")
    @b.choose_spot(1,"X")
    @b.choose_spot(2,"X")
    expect(@b.game_over?).to be true
  end

   it "test game over when their is a tie" do
    skip
    expect(@b.game_over?).to be false
    @b.choose_spot(0, "X")
    @b.choose_spot(1, "O")
    @b.choose_spot(2, "X")
    @b.choose_spot(3, "O")
    @b.choose_spot(4, "O")
    @b.choose_spot(5, "X")
    @b.choose_spot(6, "X")
    @b.choose_spot(7, "X")
    @b.choose_spot(8, "O")
    expect(@b.game_over?).to be true
  end

end