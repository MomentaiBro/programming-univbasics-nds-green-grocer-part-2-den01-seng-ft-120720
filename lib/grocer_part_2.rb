require "pry"
require_relative './part_1_solution.rb'

def find_item_by_name_in_collection(name, collection)
  index = 0

  collection.each do |grocery_item|
    return grocery_item if grocery_item[:item] === name 
    index += 1
  end

  nil
end

def apply_coupons(cart, coupons)
   counter = 0 
   while counter < coupons.length 
    cart_item = find_item_by_name_in_collection(coupons[counter][:item], cart)
    couponed_item_name = "#{coupons[counter][:item]} W/ COUPON"
    cart_item_with_coupon = find_item_by_name_in_collection(couponed_item_name, cart)
<<<<<<< HEAD

=======
   binding.pry
>>>>>>> 94c710ff706f50bfa81ea12e279e55b9e2f6264f
   if cart_item && cart_item[:count] >= coupons[counter][:num]
     if cart_item_with_coupon 
       cart_item_with_coupon[:count] += coupons[counter][:num]
       cart_item[:count] -= coupons[counter][:num]
     else
       cart_item_with_coupon = {
         :item => couponed_item_name,
<<<<<<< HEAD
         :price => (coupons[counter][:cost] / coupons[counter][:num]),
=======
         :price => coupons[counter][:cost] / coupons[counter][:num],
>>>>>>> 94c710ff706f50bfa81ea12e279e55b9e2f6264f
         :count => coupons[counter][:num],
         :clearance => cart_item[:clearance]
       }
       cart << cart_item_with_coupon
       cart_item[:count] -= coupons[counter][:num]
    end
  end
   counter += 1 
  end
  cart
end

def apply_clearance(cart) 
  counter = 0
  while counter < cart.length
  if cart[counter][:clearance]
    cart[counter][:price] = (cart[counter][:price] * 0.20)
end
 
end

def checkout(cart, coupons)
  
  
  
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
