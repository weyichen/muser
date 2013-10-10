class PurchasesController < ApplicationController
  def new
  end

  def index
  @purchases=Purchase.all
  end
end
