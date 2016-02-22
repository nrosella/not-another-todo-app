class ListsController < ApplicationController

	def index
		@list = List.new
		@lists = List.order("id")
	end

	def create
		@list = List.new(list_params)
		@list.user_id = current_user.id
	  if @list.save
	  	redirect_to list_path(@list)
    else
      @lists = List.all
      render :index
    end
	end

	def show
		@list = List.find(params[:id])
		unless current_user.id == @list.user_id
      flash[:notice] = "You don't have access to other people's lists, Sonny Jim!"
      redirect_to root_path
      return
    end
		
	end

	def update
    @list = List.find(params[:id])
    if @list.update(list_params)
      redirect_to list_path(@list)
    else
      @list = @item.list
      render 'list/show'
    end
  end


	private
	def list_params
		params.require(:list).permit(:name, :item_one, :item_two, :item_three, :item_four, :completed)
	end

end
