def pet_shop_name(shop_name)
  return shop_name[:name]
end

def total_cash(cash)
  return cash[:admin][:total_cash]
end

def add_or_remove_cash(cash, deposit)
  cash[:admin][:total_cash] += deposit
  return cash
end

def pets_sold(total_sold)
  return total_sold[:admin][:pets_sold]
end

def increase_pets_sold(total_sold, sold)
  total_sold[:admin][:pets_sold] += sold
end

def stock_count(pet_count)
  pet_inventory = pet_count[:pets].length
  return pet_inventory
end

# in the for loop ive labeled the hash inside the pets array as 'pet' so I can now access
# elements inside the hash
def pets_by_breed(pet_shop, breed)
  breed_total = []
  for pet in pet_shop[:pets]
    if ( pet[:breed] == breed )
      breed_total.push(pet)
    end
  end
  return breed_total
end

# not sure about nil solution
def find_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(pet_shop, name)
  pet = find_pet_by_name(pet_shop, name)
    pet_shop[:pets].delete(pet)
end

# test_add_pet_to_stock = create function add_pet that will show in the stock_count function that was created earlier, which should increase to 7

# test_customer_cash = create a function, customer_cash with one parameter, customer to show the balance of the given customers

# test_remove_customer_cash = function with two parameters, customer and cash that should remove a given amount(cash).

# test_customer_pet_count = function with one parameter,customer. It should show the .count of the array of pets. If a pet is added it would be a hash in index [0] and therefore pets.count would return 1.

# test_add_pet_to_customer = function with two parameters, customer and new_pet. This will add the new_pet variable from the setup.The test is passed by the customer_pet_count funtion returning the integer 1 for pets.count
