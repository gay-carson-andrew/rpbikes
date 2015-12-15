class ChargesController < ApplicationController
  def new
  end

  def create
    @amount = 2500

    customer = Stripe::Customer.create(
      :email => 'customer@carries-cookies-online.com',
      :card => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer => customer.id,
      :amount => @amount,
      :description => 'Caleb\'s Customer',
      :currency => 'usd'
    )

    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to charges_path
  end
end
