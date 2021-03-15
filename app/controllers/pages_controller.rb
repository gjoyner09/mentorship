class PagesController < ApplicationController

  def index
  end

  def about
  end

  def donate
  end

  # Actions the Stripe donation and sends to a redirect page
  def submit_donation
    amount = params[:amount].to_i*100
    id = current_user.id if user_signed_in?
    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
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

  # Redirects to Stripe (external)
  def redirect
    @session = params[:session]
  end

  # Shows user that the donation has been a success
  def success
    @amount = params[:donationAmount]
  end

end
