Airrecord.api_key = ENV["AIRTABLE_API_KEY"]

class GiftController < ApplicationController
  def index
    @gifts = Gift.all(sort: { "id" => "asc"})
  end

  def show
    @gift = Gift.find(params[:id])
  end

  # def edit
  #   @gift = Gift.find(params[:id])
  # end
end

  private

  def gift_params
    params.require(:gift).permit(
      :gift,
      :name,
      :initialPrice,
      :remainingPrice
    )
  end
