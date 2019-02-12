class ItemsController < ApplicationController
    def index
        @items = Item.all
    end

    def new
        @item = Item.new
    end

    def create
        @item = Item.new(item_params)

        if @item.save
            redirect_to admin_index_path, notice: "#{@item.title} was successfully added to the menu!"
        else
            redirect_to new_item_path, notice: "Please make sure you have filled in all fields."
        end
    end

    def destroy
        @item = Item.find(params[:id])
        @item.destroy
        redirect_to root_path, notice: "#{@item.title} was successfully removed from the menu."
    end

    def edit
        @item = Item.find(params[:id])
    end

    def update
        @item = Item.find(params[:id])
        if @item.update_attributes(item_params)
            redirect_to root_path, notice: "#{@item.title} was successfully updated."
        end
    end

    private

    def item_params
        params.require(:item).permit(:title, :category, :price)
    end
end
