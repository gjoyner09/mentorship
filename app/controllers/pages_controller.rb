class PagesController < ApplicationController

  def index
  end

  def donate
  end

  def submit_donation
    puts params
    amount = params[:amount].to_i*100
    email = current_user.email if user_signed_in?
    id = current_user.id if user_signed_in?
    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      customer_email: email,
      line_items: [{
        name: "Donation",
        amount: amount,
        currency: 'aud',
        quantity: 1,
      }],
      payment_intent_data: {
        metadata: {
          customer_id: id
        }
      },
      success_url: "#{home_url}donate/success?donationAmount=#{amount}",
      cancel_url: "#{home_url}"
    )
    redirect_to redirect_path(session: session.id)
  end

  def redirect
    puts "Params in controller: #{params}"
    @session = params[:session]
  end

  def success
    @amount = params[:donationAmount]
  end

end
