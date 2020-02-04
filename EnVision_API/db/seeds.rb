diet_list = [
  [ "Avergae", "nutritional info",  "2.5" ],
  [ "Meat Lover", "nutrition", "3.3" ],
  [ "No Beef", "nutrition", "1.9" ],
  [ "Vegetarian", "nutrition", "1.7" ],
  [ "Vegan", "nutrition", "1.5"],
]

diet_list.each do |diet, nutrition, c02|
  Diet.create( diet_type: diet, nutrition: nutrition, enviromental_impact: c02 )
end
