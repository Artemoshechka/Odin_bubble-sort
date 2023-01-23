def bubble_sort(array_to_sort)
  sorted = false
  until sorted
    sorted = true
    (0...array_to_sort.length - 1).each do |index|
      next unless array_to_sort[index + 1] < array_to_sort[index]

      array_to_sort = array_to_sort.insert(index, array_to_sort.delete_at(index + 1))
      sorted = false
    end
  end
  array_to_sort
end

p bubble_sort([4, 3, 78, 2, 0, 2])
