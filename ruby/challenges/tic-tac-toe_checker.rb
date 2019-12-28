require 'byebug'

def is_solved(board, tracker = {xwin: false, owin: false, spaces_left: false})
  columns = board.transpose
  board.each do |row|
    tracker[:xwin] = true if row[0] == 1 && row[1] == 1 && row[2] == 1
    tracker[:owin] = true if row[0] == 2 && row[1] == 2 && row[2] == 2
    tracker[:spaces_left] = true if row[0] == 0 || row[1] == 0 || row[2] == 0
  end

  columns.each do |col|
    tracker[:xwin] = true if col[0] == 1 && + col[1] == 1 && + col[2] == 1
    tracker[:owin] = true if col[0] == 2 && + col[1] == 2 && + col[2] == 2
  end

  diag_checker(board, tracker)

  if tracker[:xwin]
    # X won
    return 1
  elsif tracker[:owin]
    # O won
    return 2
  elsif tracker[:xwin] == false && tracker[:owin] == false && tracker[:spaces_left] == true
    # the board is not yet finished (there are empty spots),
    return -1
  else
    # it's a draw
    return 0
  end
end

def diag_checker(board, tracker)
  tracker[:xwin] = true if board[0][0] == 1 && board[1][1] == 1 && board[2][2] == 1
  tracker[:owin] = true if board[0][0] == 2 && board[1][1] == 2 && board[2][2] == 2
  tracker[:xwin] = true if board[0][2] == 1 && board[1][1] == 1 && board[2][0] == 1
  tracker[:owin] = true if board[0][2] == 2 && board[1][1] == 2 && board[2][0] == 2
end


p is_solved([[2, 2, 1], [1, 2, 2], [0, 2, 0]])
# 2
