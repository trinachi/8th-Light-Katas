def does_not_repeat(pattern)
  return false if pattern.uniq.length == 1 && pattern.length > 1
  (2..pattern.length).each do |x|
    if pattern.length%x == 0 && pattern.length/x >= 2
      slices = []
      pattern.each_slice(x) {|a| slices << a}
      return false if slices.uniq.length == 1
    end
  end
  return true
end