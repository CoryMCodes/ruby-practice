def bubble_sort(a)
 #get length of array n
  n = a.length
  loop do 
    #newn will be set to last swapped positon
    newn = 0
  #compare and swap elements
    for i in (1...n) do 
    if a[i-1] > a[i]
      a[i-1],a[i] = a[i],a[i-1]
      #set newn to swapped position
      newn = i
    end
  end
  n = newn
  if n <= 1
    break
  end
end
  print a
end

array = [4,3,78,2,0,2]
bubble_sort(array)