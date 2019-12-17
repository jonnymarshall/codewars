def isValidWalk(walk, y = 0, x = 0)
  if walk.length == 10
    walk.each do |direction|
      case direction
      when 'n'
        y += 1
      when 's'
        y -= 1
      when 'e'
        x += 1
      when 'w'
        x -= 1
      end
    end
  x == 0 && y == 0
  else
    false
  end
end
