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

def find_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
      return pet
    else
      pet = 0
    end
  end
end
