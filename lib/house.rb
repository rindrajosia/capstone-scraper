class House
  attr_reader :id, :category, :address, :price, :date, :link

  def initialize(house_listing)
    @id = house_listing.css('a.post-link')[0].attributes['href'].value.gsub(/[^0-9]/, '').to_i
    @category = house_listing.css('a.post-link').css('span').text
    @address = house_listing.css('span.address').text.gsub(/\s+/, ' ')
    @price = house_listing.css('div.price-date').css('span.price').text.gsub(/[^0-9]/, '').to_i
    @date = house_listing.css('div.price-date').css('time').text
    @link = 'https://www.jumia.mg' + house_listing.css('a.post-link')[0].attributes['href'].value
  end

  def house_hash
    {
      id: @id,
      category: @category,
      address: @address,
      price: @price,
      date: @date,
      link: @link
    }
  end
end
