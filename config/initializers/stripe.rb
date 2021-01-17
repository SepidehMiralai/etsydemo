# Rails.application.configure do
#   config.stripe.secret_key = ENV["STRIPE_SECRET_KEY"]
#   config.stripe.publishable_key = ENV["STRIPE_PUBLISHABLE_KEY"]
# end

if Rails.env.development?
  Rails.configuration.stripe = {
      :publishable_key => 'pk_test_51HUl34CggaDO6LT5EnQJLC9aPw58FOhIOa4lLUF2OyME3n55VRD02FqtUf0AwozWaPYpvdN0AhEKBWdbXVzYFOWv00GYd72KB6',
      :secret_key      => 'sk_test_51HUl34CggaDO6LT5pa6LT2DrNuwqRR6lo8ZKT4GjZwszwB9kCBGZKGQrFJotdKb8ZlwvquKJHBeePEL0va4fSuid00tv4U1isP'
  }
  end
Stripe.api_key = Rails.configuration.stripe[:secret_key]
 # if Rails.env.production?
 # Rails.configuration.stripe = {
 #     :publishable_key => 'pk_live_xxxxxxxxxxxxxxxxxxxxxxxxxxxxx',
 #     :secret_key      => 'sk_live_xxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
 # }

# end

if Rails.env.test?
Rails.configuration.stripe = {
    :publishable_key => 'pk_test_51HUl34CggaDO6LT5EnQJLC9aPw58FOhIOa4lLUF2OyME3n55VRD02FqtUf0AwozWaPYpvdN0AhEKBWdbXVzYFOWv00GYd72KB6',
    :secret_key      => 'sk_test_51HUl34CggaDO6LT5pa6LT2DrNuwqRR6lo8ZKT4GjZwszwB9kCBGZKGQrFJotdKb8ZlwvquKJHBeePEL0va4fSuid00tv4U1isP'
}
end
Stripe.api_key = Rails.configuration.stripe[:secret_key]