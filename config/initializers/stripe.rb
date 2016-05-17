Rails.configuration.stripe = {
  :publishable_key => 'pk_test_xA9xhaprB5bmoSGhuldyMoZI',
  :secret_key      => 'sk_test_2EGH2rntaIxsQJaXEJGBtMdp'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]

