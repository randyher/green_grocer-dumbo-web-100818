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

  cart.each do |item, info|
    coupons.each do |key,value|
      if (value==item)
        output[item]=info
        output[item][:count]-=coupons[:num]
      else
        output[item]=info
      end
    end
  end

  item_name="#{coupons[:item]} /WCOUPON"

  output[item_name]={
    price: coupons[:cost],
    clearance: true,
    count: 1
  }

  output
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
