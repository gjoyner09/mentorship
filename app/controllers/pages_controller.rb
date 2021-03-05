class PagesController < ApplicationController

  def index
  end

  def donate
  end

  def submit_donation
    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      customer_email: current_user.email,
      line_items: [{
        amount: params[:donate][:amount]
        currency: 'aud',
        quantity: 1,
      }],
      payment_intent_data: {
        metadata: {
          donation_id: @donation.id
        }
      },
      success_url: "#{root_url}donate/success?donationId=#{@donation.id}",
      cancel_url: "#{root_url}"
    )
    @session_id = session.id
  end

end
