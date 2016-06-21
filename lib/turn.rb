


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)

  if position_taken?(board, position) == true
      false
 else position.to_i.between?(0, 8) == true
end
end


# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

def position_taken?( board, position)

 

     if board[position] == " " || board[position] == ""
        false
      elsif  board[position] == "X" || board[position] == "O"
         true
      else board[position] == nil
        false

    end

  end





# code your input_to_index and move method here!

def input_to_index (user_input)

  user_input = user_input.to_i - 1
end


def move(board,position,char="X")
  board[position] = char
end








def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  position = input_to_index(user_input)
  if valid_move?(board, position)
    move(board, position)
  else
    turn(board)
  end
  display_board(board)
end
