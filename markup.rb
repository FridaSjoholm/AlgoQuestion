def markup(original_cost, people, materials)

  new_cost = flat_markup(original_cost)
  additional_markup =  material_based_markup(materials) + person_based_markup(people)

 (new_cost *(1 + additional_markup)).round(2)
end

def flat_markup(current_cost)
  current_cost * 1.05
end

def person_based_markup(people)
  0.012 * people
end

def material_based_markup(materials)
  if materials == "food"
    return 0.13
  elsif materials == "drugs"
    return 0.075
  elsif materials == "electronics"
    return 0.02
  else
    return 0
  end
end

p markup(1299.99, 3, "food")
p markup(5432.00, 1, "drugs")
p markup(12456.95, 4, "books")
