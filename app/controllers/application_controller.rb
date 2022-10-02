class ApplicationController < ActionController::Base

    
    helper_method :current_user, :logged_in?


    private 

        # def confirm_logged_in 
        #     unless session[:chef_id]
        #         flash[:notice] = "Please log in"
        #         redirect_to login_path
        #         return false
        #     else 
        #         return true
        # end 

        def current_user
          @current_user ||=  Chef.find(session[:chef_id]) if session[:chef_id]
        end 

        def logged_in?
            !!current_user
        end 
    
        def require_user
            if !logged_in? 
                flash[:danger] = "You must be logged in to perform this action"
                redirect_to :back
            end 
        end 
end
