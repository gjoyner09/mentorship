class ProfilesController < ApplicationController
  before_action :set_profile, only: %i[ show edit update destroy ]
  before_action :set_profiles, only: %i[ index mentees ]

  # GET /profiles or /profiles.json
  def index
  end

  # GET /profiles/1 or /profiles/1.json
  def show
    @requests = Requests.where(sender_id: current_user.id).where(receiver_id: @profile.user_id).where(active: true)
  end

  # GET /profiles/new
  def new
    @profile = Profile.new
  end

  # GET /profiles/1/edit
  def edit
  end

  # POST /profiles or /profiles.json
  def create
    @profile = Profile.new(profile_params)
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
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to @profile, notice: "Profile was successfully updated." }
        format.json { render :show, status: :ok, location: @profile }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profiles/1 or /profiles/1.json
  def destroy
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
    @message = Message.new
    @message.sender_id = current_user.id
    @message.receiver_id = params[:receiver_id].to_i
    @message.message = params[:message]
    @message.save
    redirect_to home_path
  end

  def messages
    if user_signed_in?
      @messages = Message.where(receiver_id: current_user.id)
    end
    puts "This user's messages are: "
    p @messages
  end

  def requests
    @request = Request.new
    @request.sender_id = current_user.id
    @request.receiver_id = params[:receiver_id].to_i
    @request.sender_role = params[:sender_role]
    @request.receiver_role = params[:receiver_role]
    @request.save
    redirect_to home_path
  end

  def matches
    if user_signed_in?
      @requests = Request.where(receiver_id: current_user.id)
    end
    puts "This user's requests are: "
    p @requests
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_profile
    @profile = Profile.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def profile_params
    params.require(:profile).permit(:name, :age, :reason_for_interest, :interests, :discussion_topics, :country_id, :gender_id, :sexuality_id, :identity_id, :mentor, :mentee, :mentor_public, :mentee_public, :mentor_availability, :mentee_availability, :picture)
  end

  def set_profiles
    @profiles = Profile.all
  end

end
