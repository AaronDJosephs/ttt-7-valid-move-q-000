# code your #valid_move? method here
def valid_move?(board, position)
  if position.to_i.between?(1,9) && !(position_taken?(board, position.to_i))
    return true
  else
    return false
  end
end

# re-defines the #position_taken? method, so that it can be used in the #valid_move? method above.
def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
    return false
  elsif board[position] == "x" || board[position] == "X" || board[position] == "o" || board[position] =="O"
    return true
  end
end