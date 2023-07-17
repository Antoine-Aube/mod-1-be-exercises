fridge_items_1 = ["milk", "eggs", "eggs","eggs", "eggs",
                  "eggs", "eggs", "avocado", "avocado", "tortilla",
                  "tortilla", "tortilla", "tortilla", "tortilla",
                  "tortilla", "tortilla", "tortilla", "tortilla"]

# Looking at the collection above:

# 1. What is problematic about listing `fridge_items_1`
# as an array structured grocery list?

#unable to easily search for quantities or items
#redundanty in general

# 2. What might be a more readable way to structure this?

groceries = {
  "milk" => 0, 
  "eggs" => 0,
  "avocado" => 0,
  "tortilla" => 0
}
