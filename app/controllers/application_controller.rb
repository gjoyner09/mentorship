class ApplicationController < ActionController::Base
    
    before_action :set_user_profile

    private

    # Looks up the profile of the current user - each Profile will have one User - this is used to determine what to show in the navbar
    def set_user_profile
        if user_signed_in?
            @user_profile = Profile.find_by(user_id: current_user.id)
        end
    end
    
end
