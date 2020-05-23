# rubocop:disable Security/Open
require 'nokogiri'
require 'open-uri'
require './lib/house.rb'
describe House do
  let(:url) { 'https://www.jumia.mg/maisons-a-vendre' }
  let(:unparsed_page) { open(url).read }
  let(:parsed_page) { Nokogiri::HTML(unparsed_page) }
  let(:list_houses) { parsed_page.css('div.post') }
  let(:house) { House.new(list_houses.first) }

  describe '#initialize' do
    it 'Return an House object if the given argument is correct' do
      expect(house).to be_an House
    end
  end
  describe '#house_hash' do
    it 'Return an House object if the given argument is correct' do
      expect(house.house_hash).to be_an Hash
    end
  end
end
# rubocop:enable Security/Open
