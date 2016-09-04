def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index.between?(0, 8) &&
    position_taken?(board, index) != true
    return true
  else
    return false
  end
end



def position_taken?(board, index)
  if board[index] == "X" ||
    board[index] == "O"
    return true
  elsif board[index] != " " ||
    board[index] != "" ||
    board[index] != nil
    return false
  end
end

def input_to_index(user_input)
   user_input.to_i - 1
end

def move(board, index, player_character = "X")
  board[index] = player_character
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if index < 9 &&
    valid_move?(board, index) == true
    move(board, index, player_character = "X")
  else
    loop do
      turn(board)
      break
    end
  end
  display_board(board)
end
