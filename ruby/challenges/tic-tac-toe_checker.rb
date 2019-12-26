require 'byebug'

def is_solved(board, tracker = {xrow: 0, orow: 0, xcol: 0, ocol: 0, ccount: 0, rcount: 0}, columns = Array.new(3){Array.new(3)})
  board.each do |row|
    tracker[:xrow] += 1 if row[0] == 1 && row[1] == 1 && row[2] == 1
    tracker[:orow] += 1 if row[0] == 2 && row[1] == 2 && row[2] == 2
    create_columns(tracker, row, columns)
    tracker[:rcount] = 0
    tracker[:ccount] += 1
  end

  columns.each do |col|
    # byebug
    tracker[:xcol] += 1 if col[0] == 1 && + col[1] == 1 && + col[2] == 1
    tracker[:ocol] += 1 if col[0] == 1 && + col[1] == 1 && + col[2] == 1
  end

  p tracker

  if tracker[:xrow] + tracker[:orow] <= 1
    return -1
  elsif (tracker[:xrow] + tracker[:xcol]) > (tracker[:orow] + tracker[:ocol])
    return 1
  elsif (tracker[:xrow] + tracker[:xcol]) < (tracker[:orow] + tracker[:ocol])
    return 2
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

p is_solved([[0,0,1],[0,1,2],[2,1,0]])
# -1
p is_solved([[0,0,1],[2,2,2],[2,1,0]])
# 2
p is_solved([[1,0,1],[0,1,2],[2,1,1]])
# 1
