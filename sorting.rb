module Sorting
  class Sort
    def merge_sort(lst)
      return lst if lst.length <= 1
      mid = lst.length / 2
      left = merge_sort(lst[0..mid - 1])
      right = merge_sort(lst[mid..lst.length])
      merge(left, right)
    end

    def merge(left, right)
      result = []; i = j = 0
      while i < left.size and j < right.size
        if left[i] >= right[j]
          result << left[i]
          i+=1
        else
          result << right[j]
          j+=1
        end
      end
      while i<left.size do
        result << left[i]
        i+=1
      end
      while j<right.size
        result << right[j]
        j+=1
      end
      result
    end
  end
end

# sort = Sorting::Sort.new
# arr = [5,3,2,19,4]
# puts sort.merge_sort(arr)
