def markup(original_cost, people, materials)

  new_cost = flat_markup(original_cost)
  
  return new_cost
end

def flat_markup(current_cost)
  return current_cost * 1.05
end

p markup(1299.99, 3, "food")
