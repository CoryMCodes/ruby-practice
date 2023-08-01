def substrings(string, array)
  # return substrings that match array values
  found_substrings = array.map do |substring|
    if string.downcase.include? substring
      substring
    end
  end
  #remove nil values from array
  found_substrings.compact!
  #accumulate occurences into hash using reduce
  sub_count_hash = found_substrings.reduce(Hash.new(0)) do |result, substring|
    result[substring] += 1
    result
  end
  #display hash result
  puts sub_count_hash
end

substrings("HeLoo my nam is jEff", ["ll","ll", "he", "je", "jeff"])