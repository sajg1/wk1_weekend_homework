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

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
end

def customer_cash(customers)
  customer_cash_display = customers[:cash]
  return customer_cash_display
end

def remove_customer_cash(customer, withdrawal)
  customer[:cash] -= withdrawal
end

def customer_pet_count(customers)
  pet_count = customers[:pets].count
  return pet_count
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
end

def customer_can_afford_pet(customer, new_pet)
  if ( customer[:cash] >= new_pet[:price] )
    return true
  else
    return false
  end
end


# customer_can_afford_pet function with two parameters, customer and new_pet.
