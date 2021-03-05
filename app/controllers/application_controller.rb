class ApplicationController < ActionController::Base
    
    before_action :set_user_profile

    private

    def set_user_profile
        if user_signed_in?
            @user_profile = Profile.find_by(user_id: current_user.id)
        end
    end
    
end
