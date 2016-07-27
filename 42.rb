tab = []
words = File.open("words.txt").read.gsub("\"", "").split(",").map { |e| s=0; e.each_byte {|c| s += (c- 64)} ;tab.push(s)}

is_triangle = [false] * 10000
is_triangle[1] = true
i = 1
b = 2
count = 0
while i < 50
  b = i*(i+1) / 2
  is_triangle[b] = true
  i+=1
end

for t in tab
  if is_triangle[t] == true
    count += 1
  end
end

p count
