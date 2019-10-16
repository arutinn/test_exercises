def sort_sizes(sizes)
  order = ["XXS", "XS", "S", "M", "L", "XL", "XXL", "XS/P", "S/P", "M/P", "L/P", "XL/P"]
  sizes.sort_by { |s| order.index(s) }
end
