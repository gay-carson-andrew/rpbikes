class PageController < ApplicationController

  def rent
    @products = Product.all
  end
  
  def about
  end

  def contact
  end

  def faq
  end

  def waiver

  end
end
