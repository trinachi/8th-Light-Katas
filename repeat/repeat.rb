def does_not_repeat(pattern)
  return true if pattern.length == 1
  return false if pattern.uniq.length == 1 && pattern.length > 1
  if pattern.length%2== 0 && pattern.length > 2
    half = pattern.length/2
    third = pattern.length/3
    if (pattern[0..(half-1)] == pattern[half..pattern.length])
      return false
    elsif (pattern[0..(third-1)] == pattern[third..(third*2-1)]) && (pattern[0..(third-1)] == pattern[(third*2)..pattern.length])
      return false
    else
      return true
    end
  end
  return true
end
  