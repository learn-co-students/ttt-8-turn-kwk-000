def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if (valid_move?(board, index)) then
    move(board, index)
    display_board(board)
  else
    puts "Sorry, your input is invalid"
    turn(board)
  end


end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  return ((index.to_i >= 0 && index.to_i <= 8) && !position_taken?(board, index))
end

def position_taken?(board, index)
  return !((board[index.to_i] == " " || board[index.to_i] == "") || (board[index.to_i] == nil))
end

def input_to_index(input)
  index = input.to_i - 1
end

def move(board, index, character="X")
    board[index] = character.upcase
end
