def merge_sort(arr)
  return arr if arr.length <= 1

  left_part = arr[0..(arr.length - 1) / 2]
  right_part = arr[arr.length / 2..]

  sorted_left = merge_sort(left_part)
  sorted_right = merge_sort(right_part)

  merged_arr = []
  until sorted_left.empty? && sorted_right.empty?
    if sorted_left.empty?
      merged_arr.push(sorted_right.shift)
    elsif sorted_right.empty? || sorted_left[0] < sorted_right[0]
      merged_arr.push(sorted_left.shift)
    else
      merged_arr.push(sorted_right.shift)
    end
  end
  merged_arr
end

p merge_sort([2, 1, 7, 72, 31, 6, 8, 12])
