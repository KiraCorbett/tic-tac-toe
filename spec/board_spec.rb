require_relative '../lib/board'

describe 'A Tic Tac Toe board' do

  before { (@board = Board.new) }

  it 'exists' do
  	@board
  end

  it '#place' do
  	@board
  	expect(@board.empty?).to be_truthy
  end

  it '#reset' do
  	expect(@board.reset)
  	expect(@board.reset).to be_truthy
  end

  it '#empty' do
  	expect(@board.empty?).to be_truthy
  end

  # it '#full' do
  # 	@board
  # 	@board = @board.full?
  # 	expect(@board.empty?).to be_falsey
  # end

end
