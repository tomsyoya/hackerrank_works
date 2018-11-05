def repeatedString(s, n)
  chars = s.chomp.split("")

  str_length = s.length
  biggest_char_count = chars.map{|c| chars.count(c)}.max
  biggest_char = chars.select{|c| chars.count(c) == biggest_char_count}.uniq[0]
  repeated_str_count = n / str_length
  
  max_occurrenced_char_count = biggest_char_count * repeated_str_count

  remain = n % str_length

  if remain != 0
    max_occurrenced_char_count += chars.slice(0..remain-1).count(biggest_char)
  end
  
  max_occurrenced_char_count
end
p repeatedString("ceebbcb", 817723)
