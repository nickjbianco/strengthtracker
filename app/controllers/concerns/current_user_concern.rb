# This concern runs before all controller methods its called within
module CurrentUserConcern
    extend ActiveSupport::Concern 

    included do 
        before_action :set_current_user
    end 

    # It just checks to see if there is a current user
    def set_current_user
        if session[:user_id] 
            @current_user = User.find(session[:user_id])
        end 
    end 
end
