def does_not_repeat(pattern)
  return true if pattern.length == 1

  if pattern.length%2== 0 && pattern.length%3 != 0
    half = pattern.length/2
    if pattern[0..(half-1)] != pattern[half..pattern.length]
      return true
    elsif pattern.length%3 == 0
      third = pattern.length/3
      if pattern[0..(third-1)] != pattern[third..(third*2 - 1)]
        return true
      else
        return false
      end
    end
  end
end
  