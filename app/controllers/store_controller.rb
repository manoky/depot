class StoreController < ApplicationController
  include CurrentCart

  def index
    @products = Product.order(:title)
    @counts = session[:counter] += 1
    if session[:cart_id].positive?
      @counts = 0
    end
  end
end
