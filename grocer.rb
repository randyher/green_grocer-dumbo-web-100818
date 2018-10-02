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
  output={}

  item_name="#{coupons[:item]} /WCOUPON"

  cart[item_name]={
    price: coupons[:cost],
    clearance: "",
    count: 1
  }

    cart.map do |item, info|
    coupons.each do |key,value|
      if (value==item)
        cart[item][:count]-=coupons[:num]
        cart[item_name][:clearance]=cart[item][:clearance]
      end
    end
  end

item_name
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
