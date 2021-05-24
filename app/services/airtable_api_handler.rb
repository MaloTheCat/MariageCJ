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
    parsed_response = JSON.parse(response.read_body).flatten[1]
  end

  def self.patch_row
    # @row = @result.find(params[:id])
    # valueLine = get_all_rows.find(params[:id])
    # valueLine.update
  end

  private

  def value_params
    # params.require(:patch_row).permit(
    #   :name,
    #   :remainingPrice
    # )
  end

end
