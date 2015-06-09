def format_shopping_list(products:)
  if products.empty?
    return "No items in list"
  end
  item = "items"
  if products.length == 1
    item = "item"
  end
  shopping_list = "#{products.length} #{item}:"
  products.each_with_index do |product, i|
    shopping_list << "\n#{i+1}: #{product.capitalize}"
  end
  return shopping_list
end

shopping_list = ["Subway","Doritos","korv"]
puts format_shopping_list(products:shopping_list)