
def bubble_sort(arr)
  not_sorted = true
  while not_sorted
   not_sorted = false
   i = 0
     while i < (arr.length - 1)
      if (arr[i] > arr[i+1])
        arr[i], arr[i+1] = arr[i+1], arr[i]
        not_sorted = true
      end
      i += 1
      end
  end
  arr
end
