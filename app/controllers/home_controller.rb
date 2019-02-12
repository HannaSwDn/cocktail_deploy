class HomeController < ApplicationController
    def index
        @items = Item.all
        
        if user_signed_in?
            @user = current_user
        end
    end
end
