matrix = File.open("81data.txt").read.split("\n").map { |e| e.split(",").map { |ee| ee.to_i } }

size = 80

i = size - 2
while i >= 0
  matrix[size-1][i] += matrix[size-1][i+1]
  matrix[i][size-1] += matrix[i+1][size-1]
  i-=1
end


i = size-2
while i >= 0
  j = size-2
  while j >= 0
    matrix[i][j] += [matrix[i+1][j], matrix[i][j+1]].min
    j-=1
  end
  i-=1
end

p matrix[0][0]
