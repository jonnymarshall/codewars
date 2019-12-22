def is_solved(board, score = {x: 0, o: 0, incomplete: true})
  board.each do |row|
    row.each do |slot|
      score[:x] += 1 if slot == 1
      score[:o] += 1 if slot == 2
      score[:incomplete] == true if slot == 0
    end
  end
  p score
  if score[:incomplete] == true
    return -1
  elsif score[:x] > score[:o]
    return 1
  elsif score[:o] > score[:x]
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
