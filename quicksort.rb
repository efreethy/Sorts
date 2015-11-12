class Array
    # naive solution AKA: garbage
    def baby_quick_sort!
        return self if length < 2
        pivot = self[0]
        left = self.select { |el| el < pivot }
        right = self.select { |el| el >= pivot }
        left.qs! + [pivot] + right.qs!
    end

    # Optimal Solution
    def quick_sort!(start = 0, len = length)
      return self if len < 2
      pivot_index = partition!(start, len)
      left_len = pivot_index - start
      right_len = len - left_len - 1
      qs!(start, left_len)
      qs!(pivot_index + 1, right_len)
      self
    end

    def partition!(start, len)
      pivot = start
      ((start + 1)...(start + len)).each do |i|
        if self[i] < self[pivot]
          swap!(pivot + 1, i)
          swap!(pivot, pivot + 1)
          pivot += 1
        end
      end
      pivot
    end

    private

    def swap!(idx1, idx2)
     if idx1 === idx2
       return
     else
       self[idx1], self[idx2] = self[idx1], self[idx2]
     end
   end

end
