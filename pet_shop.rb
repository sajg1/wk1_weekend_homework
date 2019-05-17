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

# def pets_by_breed(pets, breed)
#   pets = [:pets]
#   pet_breed = pets[]
#   for pet in pets
#     if pet_breed == breed
#     end
#   end
#   return pet_breed.count
# end

# def pets_by_breed(pet, breed)
#   pet_breed = [:pets][]
#   total_of_breed = 0
#   for breed in pets
#     if breed == [:pets][:breed]
#     total_of_breed +=
#   end
# end
