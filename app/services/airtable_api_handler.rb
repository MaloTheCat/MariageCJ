require "uri"
require "net/http"
require 'json'

class AirtableApiHandler
  def self.get_all_rows
    url = URI("https://api.airtable.com/v0/appsnmy0OMuSEkwJS/C&J")

    https = Net::HTTP.new(url.host, url.port)
    https.use_ssl = true

    request = Net::HTTP::Get.new(url)
    request["Authorization"] = ENV['API_AIRTABLE']
    request["Cookie"] = "brw=brwbfYTmJqaGnv7ZD"

    response = https.request(request)
    JSON.parse(response.read_body).flatten[1]
  end

  def self.patch_row
    # get_all_rows
  end

end
