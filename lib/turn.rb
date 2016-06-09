def turn(board)
  loop do
    puts "Please enter 1-9:"
    input=gets.strip
    index=input_to_index(input)
    if valid_move?(board,index)
      move(board,index)
      #display_board(board)
      break
    end
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(num)
  index= num.to_i
  index= index - 1
end
# code your #valid_move? method here
def valid_move?(a,i)
  if i.between?(0,8) && !position_taken?(a,i)
    true
  else
    false
  end
end


# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(a,i)
   if a[i]==" " || a[i]=="" || a[i]==nil
     false
   else
     true
   end
end

#turn
def move(arr,i,xo="X")
  arr[i]=xo
  display_board(arr)
  return arr
end
