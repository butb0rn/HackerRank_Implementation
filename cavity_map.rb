def cavity_map()
  values = []
  n = gets.to_i
  (0...n).each do |i|
    values << gets.strip().split("").map(&:to_i)
  end
  values.flatten!
  ids = []
  (1...n-1).each do |i|
    (1...n-1).each do |j|
      if (values[i*n + j] > values[(i-1)*n + j]) && (values[i*n + j] > values[(i+1)*n + j]) &&
              (values[i*n + j] > values[i*n + j - 1]) && (values[i*n + j] > values[i*n + j + 1])
          ids << (i*n + j)
      end
    end
  end
  ids.each do |i|
    values[i] = "X"
  end
  values.each_slice(n) {|a| puts a.join('')}
end
cavity_map()
