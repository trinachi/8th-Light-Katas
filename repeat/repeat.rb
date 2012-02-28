def does_not_repeat(pattern)
  return false if pattern.uniq.length == 1 && pattern.length > 1
  if pattern.length%2== 0 && pattern.length > 2
    half = pattern.length/2
    third = pattern.length/3
    fifth = pattern.length/5
    if (pattern[0..(half-1)] == pattern[half..pattern.length])
      return false
    elsif (pattern[0..(third-1)] == pattern[third..(third*2-1)]) && (pattern[0..(third-1)] == pattern[(third*2)..pattern.length])
      return false
    elsif pattern.length%5 == 0
      if (pattern[0..(fifth-1)] == pattern[fifth..(fifth*2-1)]) && 
        (pattern[0..(fifth-1)] == pattern[(fifth*2)..(fifth*3-1)]) &&
        (pattern[0..(fifth-1)] == pattern[(fifth*3)..(fifth*4-1)]) &&
        (pattern[0..(fifth-1)] == pattern[(fifth*4)..pattern.length])
        return false
      end
    else
      return true
    end
  end
  return true
end
  