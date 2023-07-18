pizza_toppings = {
  veggies: ["green peppers", "jalapeño", "mushrooms"],
  protein: ["pepperoni", "sausage", "sardines"],
  fruit: ["pineapple"]
}

# 1. what is pizza_toppings.count
count = pizza_toppings[:veggies].count + pizza_toppings[:protein].count + pizza_toppings[:fruit].count
puts count
# 2. what is pizza_toppings.values
values = pizza_toppings.values
p values
# 3. how can I access the element “pineapple”
pineapple = pizza_toppings[:fruit][0]
p pineapple
# 4. how can I add the element “olives” to the key “veggies”?
add_olives = pizza_toppings[:veggies].prepend("olives")
#can alsoo do pizza_toppings[:veggies] += ["olives"] -> when using += have to give
#the data type aka []
p add_olives
