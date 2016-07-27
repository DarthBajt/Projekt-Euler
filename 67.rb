triangle = File.open("67data.txt").read.split("\n").map { |e| e.split(" ").map { |ee| ee.to_i } }

i = triangle.size - 1

while i > 0
  len = triangle[i].size - 1
  j = 0
  while j < len
    triangle[i-1][j] = triangle[i-1][j] +  [triangle[i][j], triangle[i][j+1]].max
    j+=1
  end
  i -= 1
end

p triangle[0][0]
