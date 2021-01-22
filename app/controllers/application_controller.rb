class ApplicationController < ActionController::Base
    include ApplicationHelper
    include RecipesHelper


    def redirect_if_not_logged_in
        redirect_to '/' unless logged_in?
        flash[:alert] = "Please log in or create an account."
    end


  
end
