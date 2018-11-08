class TicTacToe
  
  def initialize(board = nil)
    @board = board || Array.new(9, " ")
  end
    
  WIN_COMBINATIONS = [
    [0,1,2], #Top row
    [3,4,5], #Middle row
    [6,7,8], #Bottom row
    [0,3,6], #Left-vert row
    [1,4,7], #Middle-vert row
    [2,5,8], #Right-vert row
    [0,4,8], #Left-diagnol row
    [2,4,6] #Right-diagnol row
  ]

  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  
  def input_to_index(input)
    index = input.to_i - 1
  end
  
  def move(index, value) 
    @board[index] = value
  end
  
  def position_taken?(index)
    @board[index] != " " && @board[index] != "" 
  end
  
  def valid_move?(index)
     !position_taken?(index) && index.between?(0,9)
  end

  def turn_count #returns number of turns that have been played
    counter = 0
    @board.each do |turn|
      if  turn == "X" || turn == "O"
        counter += 1
      end
    end
    counter
  end


end