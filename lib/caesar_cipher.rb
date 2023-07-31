def caesar_cipher(text, num_shift)
  acii_array = text.chars.map{|ch| ch.ord}
  shifted_array = acii_array.map do |num| 
    if num >= 65 && num <=90
      if num+num_shift < 90
        num+num_shift
      else
        num+num_shift-26
      end
    elsif num >= 97 && num<=122
     if num+num_shift < 122
      num+num_shift
     else
      num+num_shift-26
    end
  else
    num
  end
end
  print shifted_array.map{|n| n.chr}.join
end

caesar_cipher("Hello, Julius Caesar", 0)