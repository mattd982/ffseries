class DonationsController < ApplicationController
  def new
end

def create
  # Amount in cents
  @amount = 500
  redirect_to overview_path 

  customer = Stripe::Customer.create({
    email: params[:stripeEmail],
    source: params[:stripeToken],
  })

  charge = Stripe::Charge.create({
    customer: customer.id,
    amount: @amount,
    description: 'Rails Stripe customer',
    currency: 'usd',
  })

rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to root_path
end
end
