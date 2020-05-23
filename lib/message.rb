def show(house)
  puts "adds >> category : #{house.category}
  ** address : #{house.address}
  ** price : #{house.price} Ariary
  ** date : #{house.date}
  ** link : #{house.link}"
  puts '===================================================================='
end

def warning(house, old)
  puts "Warning: #{house[:category]} => The price has changed.
  \n Old price: #{old['price']} Ariary \t => New price #{house[:price]} Ariary"
end
