class GiftsController < ApplicationController
  def show
    @gift = Gift.find(params[:gift_id])
  end

  private

  def gift_params
    params.require(:gift).permit(:name)
  end
end


records.fields.gift
records.fields.Initial Price

