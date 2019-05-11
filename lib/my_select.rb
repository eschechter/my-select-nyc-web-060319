def my_select(collection)
  if ! block_given?
    return "Give me a block!"
  end
  i = 0
  newCollect = []
  while i < collection.length
    if yield collection[i]
      newCollect << collection[i]
    end
    i += 1
  end
  return newCollect
end
