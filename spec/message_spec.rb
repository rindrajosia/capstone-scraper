# rubocop:disable Security/Open
require 'nokogiri'
require 'open-uri'
require './lib/house.rb'
require './lib/message.rb'

describe '#show' do
  let(:url) { 'https://www.jumia.mg/maisons-a-vendre' }
  let(:unparsed_page) { open(url).read }
  let(:parsed_page) { Nokogiri::HTML(unparsed_page) }
  let(:list_houses) { parsed_page.css('div.post') }
  let(:house_first) { House.new(list_houses.first) }
  let(:house_last) { House.new(list_houses.last) }
  it 'Return nil and show house info' do
    expect(show(house_first)).to eq(nil)
  end
  it 'Return nil and show house info if there is a change in price info' do
    expect(warning(house_first.house_hash, house_last.house_hash)).to eq(nil)
  end
end

# rubocop:enable Security/Open
