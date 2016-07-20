def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i-1
end

def move(board, index = 0, value = 'X')
  board[index] = value
end

def position_taken?(board, index)
  board[index]
  if board[index] == " " ||
    board[index] == " " ||
    board[index] == nil
    false
  else
    true
  end
end

def valid_move?(board, input_to_index)
  if input_to_index.between?(0, 8) &&
    !position_taken?(board, input_to_index)
    true
  else
    nil
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  input = input_to_index(input)
  if valid_move?(board, input)
    move(board, input)
  input = gets.strip
  else
  end
end
