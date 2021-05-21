require './app/services/airtable_api_handler.rb'


class PagesController < ApplicationController
  def home
    @result = AirtableApiHandler.get_all_rows
  end
end
