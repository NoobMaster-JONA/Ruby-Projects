array=[4,3,78,2,0,2,100,5,23,999,-2,45]

def bubble_sort(arr)
  length=arr.length
  flag=1
  while flag!=0
    flag=0
    for i in 0..length-1
      if i+1!=length
        if arr[i]>arr[i+1]
          arr[i], arr[i+1]=arr[i+1], arr[i]
          flag=1
        end 
      end
    end
  end
  #p arr
  return arr
end

sorted_array=bubble_sort(array)  
p sorted_array