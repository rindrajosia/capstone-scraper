# rubocop:disable Security/Open, Lint/UselessAssignment
module Web
  def self.get_page(url = url_setting)
    unparsed_page = open(url).read
    parsed_page = Nokogiri::HTML(unparsed_page)
  end

  def self.url_setting(page = 1)
    page != 1 ? "https://www.jumia.mg/maisons-a-vendre?page=#{page}" : 'https://www.jumia.mg/maisons-a-vendre'
  end
end
# rubocop:enable Security/Open, Lint/UselessAssignment
