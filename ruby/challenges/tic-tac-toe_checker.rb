require 'byebug'

def is_solved(board, tracker = {xwin: false, owin: false, ccount: 0, rcount: 0, spaces_left: false}, columns = Array.new(3){Array.new(3)})
  board.each do |row|
    tracker[:xwin] = true if row[0] == 1 && row[1] == 1 && row[2] == 1
    tracker[:owin] = true if row[0] == 2 && row[1] == 2 && row[2] == 2
    tracker[:spaces_left] = true if row[0] == 0 || row[1] == 0 || row[2] == 0
    create_columns(tracker, row, columns)
    tracker[:rcount] = 0
    tracker[:ccount] += 1
  end

  columns.each do |col|
    # byebug
    tracker[:xwin] = true if col[0] == 1 && + col[1] == 1 && + col[2] == 1
    tracker[:owin] = true if col[0] == 1 && + col[1] == 1 && + col[2] == 1
  end

  diag_checker(columns, board, tracker)

  p tracker

  if tracker[:xwin]
    return 1
  elsif tracker[:owin]
    return 2
  elsif tracker[:xwin] == false && tracker[:owin] == false && tracker[:spaces_left] == true
    return -1
  else
    return 0
  end
end

def create_columns(tracker, row, columns)
  row.each do |slot|
    columns[tracker[:rcount]][tracker[:ccount]] = slot
    tracker[:rcount] += 1
  end
end

def diag_checker(columns, board, tracker)
  tracker[:xwin] = true if (columns[0][0] == 1 && board[0][0] == 1) && (columns[1][1] == 1 && board[1][1] == 1) && (columns[2][2] == 1 && board[2][2] == 1)
  tracker[:owin] = true if (columns[0][0] == 2 && board[0][0] == 2) && (columns[1][1] == 2 && board[1][1] == 2) && (columns[2][2] == 2 && board[2][2] == 2)
end


p is_solved([[0,0,1],[0,1,2],[2,1,0]])
# -1
p is_solved([[0,0,1],[2,2,2],[2,1,0]])
# 2
p is_solved([[1,0,1],[0,1,2],[2,1,1]])
# 1
