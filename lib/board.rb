class Board
  attr_accessor :board
  attr_reader :rows
  attr_reader :columns
  def initialize rows, columns
    @rows = rows
    @columns = columns
    @board = Array.new(rows){Array.new(columns, " ")}
  end
  def printb
    @rows.times do |i|
      @columns.times do |j|
        print "#{@board[i][j]}|"
        STDOUT.flush
      end
      puts ""
    end
  end
  def full?
    @rows.times do |i|
      @columns.times do |j|
        return false if @board[i][j] == ' '
      end
    end
    true
  end
end