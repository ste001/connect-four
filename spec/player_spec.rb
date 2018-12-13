require 'require_all'
require_all '../lib'

describe Player do
  describe '#insert' do
    it 'must not insert the disc into the board if out of bounds' do
      player = Player.new("A")
      board = Board.new(6,7)
      expect(player.insert(board, 12)).to be false
    end
    it 'insert the disc in the right location' do
      player = Player.new("A")
      board = Board.new(6,7)
      player.insert(board, 4)
      expect(board.board[5][4]).to eq('O')
    end
    it 'must not insert a disc in the place of another disc' do
      player = Player.new("A")
      board = Board.new(6,7)
      6.times do |i|
        board.board[i][4] = 'O'
      end
      expect(player.insert(board, 4)).to be false
    end
    it 'must stack the disc over the others' do
      player = Player.new("A")
      board = Board.new(6,7)
      (3..5).each do |i|
        board.board[i][4] = 'O'
      end
      player.insert(board, 4)
      expect(board.board[2][4]).to eq('O')
    end
  end
end