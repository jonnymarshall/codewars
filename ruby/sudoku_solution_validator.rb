require 'byebug'

def validSolution(board, set = (1..9).to_a, squares = [], vertical_lines = [])
  # a, b, c, d, e, f, g, h, i = Array.new(9) {[]}
  # vertical_lines += [a, b, c, d, e, f, g, h, i]
  vertical_lines = Array.new(9, []) {[]}

  count = square_checker(board, count, vertical_lines, set)

  vert_line_count = 0
  vertical_lines.each do |vertical_line|
    count += 1 if vertical_line.sort == set
    vert_line_count += 1
  end

  squares << board[0][0..2] + board[1][0..2] + board[2][0..2]
  squares << board[0][3..5] + board[1][3..5] + board[2][3..5]
  squares << board[0][6..8] + board[1][6..8] + board[2][6..8]

  squares << board[3][0..2] + board[4][0..2] + board[5][0..2]
  squares << board[3][3..5] + board[4][3..5] + board[5][3..5]
  squares << board[3][6..8] + board[4][6..8] + board[5][6..8]

  squares << board[6][0..2] + board[7][0..2] + board[8][0..2]
  squares << board[6][3..5] + board[7][3..5] + board[8][3..5]
  squares << board[6][6..8] + board[7][6..8] + board[8][6..8]

  squares.each do |square|
    count += 1 if square.sort == set
  end
  count == 27
end

def square_checker(board, count, vertical_lines, set, vert_count = 0, counter = 0)
  board.each do |line|
    # Check if each line is a set
    counter += 1 if line.sort == set

    # Arrange each number in a line into correct vertical
    line.each do |number|
      # byebug
      vertical_lines[vert_count] << number
      vert_count += 1
    end
    vert_count = 0
  end
  counter
end

p validSolution([[5, 3, 4, 6, 7, 8, 9, 1, 2],
                         [6, 7, 2, 1, 9, 5, 3, 4, 8],
                         [1, 9, 8, 3, 4, 2, 5, 6, 7],
                         [8, 5, 9, 7, 6, 1, 4, 2, 3],
                         [4, 2, 6, 8, 5, 3, 7, 9, 1],
                         [7, 1, 3, 9, 2, 4, 8, 5, 6],
                         [9, 6, 1, 5, 3, 7, 2, 8, 4],
                         [2, 8, 7, 4, 1, 9, 6, 3, 5],
                         [3, 4, 5, 2, 8, 6, 1, 7, 9]])
# true

p validSolution([[5, 3, 4, 6, 7, 8, 9, 1, 2],
                         [6, 7, 2, 1, 9, 0, 3, 4, 9],
                         [1, 0, 0, 3, 4, 2, 5, 6, 0],
                         [8, 5, 9, 7, 6, 1, 0, 2, 0],
                         [4, 2, 6, 8, 5, 3, 7, 9, 1],
                         [7, 1, 3, 9, 2, 4, 8, 5, 6],
                         [9, 0, 1, 5, 3, 7, 2, 1, 4],
                         [2, 8, 7, 4, 1, 9, 6, 3, 5],
                         [3, 0, 0, 4, 8, 1, 1, 7, 9]])
false
