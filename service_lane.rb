def service_lane()
  length_freeway, number_test_case = gets.split(" ").map(&:to_i)
  result = []
  width = gets.split(" ").map(&:to_i)
  (0...number_test_case).each do
    i, j = gets.split(" ").map(&:to_i)
    result << width[i..j].min
  end
  puts result
end
service_lane()
