class ItemController < ApplicationController

    def index
        @items = Item.all
    end

    def new
        @item = Item.new
    end

    def create
        @item = Item.new(item_params)

        if @item.save
            redirect_to admin_index_path, notice: "Canapé was successfully added to the menu!"
        else
            render "new"
        end
    end

    private

    def item_params
        params.require(:item).permit(:title, :category, :price)
    end

end
