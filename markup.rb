def markup(original_cost, people, materials)

  new_cost = flat_markup(original_cost)
  new_cost = person_based_markup(new_cost, people)
  return new_cost
end

def flat_markup(current_cost)
  return current_cost * 1.05
end

def person_based_markup(current_cost, people)
  markup = 1 + (0.012 * people)
  return current_cost * markup
end

p markup(1299.99, 3, "food")
