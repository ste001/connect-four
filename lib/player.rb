require_relative 'board.rb'

class Player
  attr_reader :name
  attr_reader :placeholder
  def initialize name, placeholder = 'O'
    @name = name
    @placeholder = placeholder
  end
  def insert board, column
    return false if column > board.columns
    row = board.rows - 1
    while (row >= 0)
      if board.board[row][column] == " "
        board.board[row][column] = @placeholder
        return
      end
      row -= 1
    end
    false
  end
end