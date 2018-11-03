def countingValleys(n, s)
  steps = s.scan(/U+|D+/)
  
  current_altitude = 0
  sea_level = 0
  valley_count = 0
  is_under_sea = false

  for i in 0..steps.length-1
    if steps[i].include?("U")
      current_altitude += steps[i].length
    else
      current_altitude -= steps[i].length
    end

    if is_under_sea && current_altitude >= sea_level
      valley_count += 1
    end

    is_under_sea = (current_altitude < sea_level)
  end

  valley_count
end

str = "UDUUUDUDDD"
p countingValleys(str.length, str)
