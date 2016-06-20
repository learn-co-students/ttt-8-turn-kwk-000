def display_board
  puts "   |   |   \n-----------\n   |   |   \n-----------\n   |   |   "
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  index = input.to_i - 1
end

def move(board, index, token="X")
  board[index] = token
  board
end

def valid_move?(board, index)
  if index > 0
    index - 1
  end
    if index > 8 || index < 0
      false
    elsif position_taken?(board, index)
      false
    else
      true
    end
end

def position_taken?(board, index)
  if board[index] == "X" || board[index] ==  "O"
    true
  elsif board[index] == " " || board[index] == "" || board[index] == nil
    false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index, token="X")
    display_board(board)
  else
    turn(board)
  end
end
