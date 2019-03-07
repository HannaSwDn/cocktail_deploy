class HomeController < ApplicationController
    def index
        @items = Item.all
        
        if user_signed_in?
            @user = current_user
        end

        @openToday = openingHours
    end

    def openingHours
        today = Date.today
        today = today.wday

        case today
        when 1..4
            return '17:00 - 23:00'
        when 5
            return '17:00 - 01:00'
        else
            return '17:00 - 02:00'
        end
    end
end
