require './app/services/airtable_api_handler.rb'


class PagesController < ApplicationController
  def home
    @result = AirtableApiHandler.get_all_rows
    # return @result["fields"]
    # remaining_price = [:id, :remainingPrice]
    # @result.map do |r|
      # r.select { |k,_| remaining_price.include? k }
    # end
    # return remaining_price
    # raise

    # @initial_price = @result[0]
    # @remaining_price = @result[0]
    # @gift_name = @result["fields"]["gift"]
  end
  def addValue
    # @value.update
  end



end
