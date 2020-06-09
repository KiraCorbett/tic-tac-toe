require_relative '../lib/board'

describe 'A Tic Tac Toe board' do

  before { (@board = Board.new) }

  let(:fake_board) {{
  	top: { left: :fake, middle: :fake, right: :fake },
    middle: { left: :fake, middle: :fake, right: :fake },
    bottom: { left: :fake, middle: :fake, right: :fake },
	}}

  it 'exists' do
  	@board
  end

  it '#place' do
  	temp_locations = "temp locations"
  	@board = Board.new(temp_locations)
  	expect(@board.locations).to eq(temp_locations)
  end

  it '#token_at' do
  	@board.place(:x, :middle, :left)
  	expect(@board.locations[:middle][:left]).to eq(:x)
  end

  it '#reset' do
  	expect(@board.reset)
  	expect(@board.reset).to be_truthy
  end

  it '#empty' do
  	expect(@board.empty?).to be_truthy
  end

  it '#full' do
  	@board = Board.new(fake_board)
  	expect(@board.full?).to be_truthy
  end

end