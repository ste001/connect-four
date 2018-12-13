require '../lib/board.rb'

describe Board do
  describe '#full?' do
    it 'must say if the grid is full' do
      board = Board.new(6,7)
      board.board = Array.new(6){Array.new(7,'O')}
      expect(board.full?).to be true
    end
    it 'must return false if the grid is empty' do
      board = Board.new(6,7)
      expect(board.full?).to be false
    end
    it 'must return false if there are some empty spaces' do
      board = Board.new(6,7)
      board.board = Array.new(6){Array.new(7,'O')}
      board.board[0..2][5] = ' '
      board.board[3][5] = ' '
      expect(board.full?).to be false
    end
  end
end