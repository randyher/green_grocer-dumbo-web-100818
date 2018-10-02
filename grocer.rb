def consolidate_cart(cart)
  output={}
  count=Hash.new 0
  price=Hash.new 0

  cart.each do |items|
    items.each do |food, info|
      count[food]+=1
      output[food]={
      price: info[:price],
      clearance: info[:clearance],
      count: count[food]
      }
    end
  end
  

  output

end


def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
