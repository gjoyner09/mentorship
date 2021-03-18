class ProfilesController < ApplicationController
  # Setting the profile to be shown/edited/updated/destroyed
  before_action :set_profile, only: %i[ show edit update destroy ]
  # Creating the list of all profiles to be shown in the mentors and mentees pages
  before_action :set_profiles, only: %i[ index mentees ]

  # GET /profiles or /profiles.json
  def index
  end

  # GET /profiles/1 or /profiles/1.json
  def show
    if user_signed_in?
      # Checks to see if there are any requests between the user and the profile (so that they can't send multiple requests)
      @requests_to = Request.where(sender_id: current_user.id).where(receiver_id: @profile.user_id)
      @requests_from = Request.where(receiver_id: current_user.id).where(sender_id: @profile.user_id)
      # Checks if the profile has sent a message to the user (which overrides private profiles)
      @messages_from = Message.where(receiver_id: current_user.id).where(sender_id: @profile.user_id)
      @matches_with = Match.where(mentor_id: current_user.id).where(mentee_id: @profile.id).where(active: true).or(Match.where(mentor_id: @profile.id).where(mentee_id: current_user.id).where(active: true))
    end
  end

  # GET /profiles/new
  def new
    # creates a new Profile
    @profile = Profile.new
  end

  # GET /profiles/1/edit
  def edit
  end

  # POST /profiles or /profiles.json
  def create
    # Uses the parameters from the form to create a new profile
    @profile = Profile.new(profile_params)
    # If the profile is a mentor and/or mentee, sets their initial availability for that role(s) to true
    if @profile.mentor == true
      @profile.mentor_availability = true
    end
    if @profile.mentee == true
      @profile.mentee_availability = true
    end
    # Adds in the user_id to the profile (so that the Profile model can relate to the User model - one Profile has one User (required) and one User can have one Profile (optional))
    @profile.user_id = current_user.id

    respond_to do |format|
      if @profile.save
        format.html { redirect_to @profile, notice: "Profile was successfully created." }
        format.json { render :show, status: :created, location: @profile }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profiles/1 or /profiles/1.json
  def update
    # Updates the profile details
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to details_path, notice: "Profile was successfully updated." }
        format.json { render :show, status: :ok, location: @profile }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profiles/1 or /profiles/1.json
  def destroy
    # Deletes the profile
    @profile.destroy
    respond_to do |format|
      format.html { redirect_to profiles_url, notice: "Profile was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def mentees
  end

  def details
  end

  def message_create
    # Creates a new Message with the params from the form
    @message = Message.new
    @message.sender_id = current_user.id
    @message.receiver_id = params[:receiver_id].to_i
    @message.message = params[:message]
    @message.save
    redirect_to messages_path
  end

  def messages
    # Sets the @messages variable to all messages where the user is either the sender or receiver of the message
    if user_signed_in?
      @messages = Message.where(receiver_id: current_user.id).or(Message.where(sender_id: current_user.id))
    end
  end

  def requests
    # Creates a new Request with the params from the form
    @request = Request.new
    @request.sender_id = current_user.id
    @request.receiver_id = params[:receiver_id].to_i
    @request.sender_role = params[:sender_role]
    @request.receiver_role = params[:receiver_role]
    @request.save
    redirect_to matches_path
  end

  def match_create
    # Creates a new match if the user chose to do so
    if params[:receiver_role] == "mentor" && params[:response] == "Accepted"
      @match = Match.new
      @match.mentor_id = current_user.id
      @match.mentee_id = params[:sender_id]
      @match.save
    elsif params[:response] == "Accepted"
      @match = Match.new
      @match.mentee_id = current_user.id
      @match.mentor_id = params[:sender_id]
      @match.save
    end
    # Destroys the request whether or not a new match was created (e.g. also allows for denying a request)
    Request.destroy(params[:request_id])
    redirect_to matches_path
  end

  def matches
    if user_signed_in?
      # Gets all requests that the user has received
      @user_requests = Request.where(receiver_id: current_user.id)
      # Gets all matches that the user currently has
      @user_matches = Match.where(mentor_id: current_user.id).or(Match.where(mentee_id: current_user.id))
    end
  end

  def match_destroy
    # Sets the match to inactive (does not actually destroy the match)
    inactive_match = Match.find_by(id: params[:match_id].to_i)
    inactive_match.active = false
    inactive_match.save
    redirect_to matches_path
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_profile
    # Gets the profile of note
    @profile = Profile.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def profile_params
    params.require(:profile).permit(:name, :age, :reason_for_interest, :interests, :discussion_topics, :country_id, :gender_id, :sexuality_id, :identity_id, :mentor, :mentee, :mentor_public, :mentee_public, :mentor_availability, :mentee_availability, :picture)
  end

  def set_profiles
    # Gets the list of all profiles (to be shown in mentor and mentee pages)
    @profiles = Profile.includes(:gender, :country, :sexuality, :identity, :user)
  end

end
