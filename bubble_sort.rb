def bubble_sort(unsorted_list)
  working_list = unsorted_list.dup
  last_index = unsorted_list.length - 1

  begin
    unchanged = true
    0.upto(last_index - 1) do |i|
      next unless working_list[i] > working_list[i + 1]
      working_list[i], working_list[i + 1] = working_list[i + 1], working_list[i]
      unchanged = false
    end
    last_index -= 1
  end until unchanged
  working_list
end
