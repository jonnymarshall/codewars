def is_solved(board, score = {xrow: 0, orow: 0, xcol: 0, ocol: 0}, i = 0, columns = Array.new(3){Array.new(3)})
  board.each do |row|
    score[:xrow] += 1 if row[0] == 1 && row[1] == 1 && row[2] == 1
    score[:orow] += 1 if row[0] == 2 && row[1] == 2 && row[2] == 2
    row.each do |slot|
      columns[i] << slot
    end
    p columns
    i += 1
  end

  p columns
  columns = columns.each_slice(3).to_a

  columns.each do |col|
    score[:xcol] += 1 if col[0] == 1 && + col[1] == 1 && + col[2] == 1
    score[:ocol] += 1 if col[0] == 1 && + col[1] == 1 && + col[2] == 1
  end

  p score

  if score[:xrow] + score[:orow] <= 1
    return -1
  elsif (score[:xrow] + score[:xcol]) > (score[:orow] + score[:ocol])
    return 1
  elsif (score[:xrow] + score[:xcol]) < (score[:orow] + score[:ocol])
    return 2
  else
    return 0
  end
end

p is_solved([[0,0,1],[0,1,2],[2,1,0]])
# -1
p is_solved([[0,0,1],[2,2,2],[2,1,0]])
# 2
p is_solved([[1,0,1],[0,1,2],[2,1,1]])
# 1
