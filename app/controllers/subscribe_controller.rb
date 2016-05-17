class SubscribeController < ApplicationController

def new
end

def create

# Set your secret key: remember to change this to your live secret key in production
# See your keys here https://dashboard.stripe.com/account/apikeys
Stripe.api_key = "sk_test_2EGH2rntaIxsQJaXEJGBtMdp"

  # Amount in cents
#  @amount = 500

  customer = Stripe::Customer.create(
    :email => params[:stripeEmail],
    :source  => params[:stripeToken]
    :plan => 'gold'
  )

  charge = Stripe::Plan.create(
  :amount => 2000,
  :interval => 'month',
  :name => 'Amazing Gold Plan',
  :currency => 'usd',
  :id => 'gold'

  )

rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to new_charge_path
end

end
