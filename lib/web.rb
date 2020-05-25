# rubocop:disable Security/Open, Lint/UselessAssignment
module Web
  def self.get_page(url = url_setting)
    unparsed_page = open(url).read
    parsed_page = Nokogiri::HTML(unparsed_page)
  end


end
# rubocop:enable Security/Open, Lint/UselessAssignment
