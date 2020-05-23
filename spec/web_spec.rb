require 'nokogiri'
require 'open-uri'
require './lib/web.rb'

describe Web do
  include Web
  describe '#url_setting' do
    it 'Return an Url' do
      expect(url_setting).to eq('https://www.jumia.mg/maisons-a-vendre')
    end
  end
  describe '#get_page' do
    it 'Return an Nokogiri object' do
      expect(get_page).to be_an Nokogiri::HTML::Document
    end
  end
end
