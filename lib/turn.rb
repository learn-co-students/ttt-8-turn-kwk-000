def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!

def input_to_index(input)
  index = input.to_i - 1
end


def move(board, index, character = "X")
  board[index] = character
  board
end


def position_taken?(board, index)
  board[index] == "X" || board[index] == "O"
end

def between?(index)
  index >= 0 && index <= 8
end

def valid_move?(board, index)
  if !position_taken?(board, index) && between?(index)
    true
  else
    false
  end
end


def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input.to_i - 1
  input_to_index(input)
  if valid_move?(board, index)
    move(board, index, character = "X")
    display_board(board)
  else
    turn(board)
  end
end
