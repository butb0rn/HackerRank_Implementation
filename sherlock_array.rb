def sherlock
  t = gets.to_i
  flag = false
  numbers = gets.split(' ').map(&:to_i)
  right = numbers.reduce(:+)
  left = 0
  numbers.each do |item|
    right -= item
    flag = true and break if left == right
    left += item
  end
  puts flag ? "YES" : "NO"
end

n = gets.to_i
n.times{sherlock()}
