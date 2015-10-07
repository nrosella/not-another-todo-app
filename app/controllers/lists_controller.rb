class ListsController < ApplicationController

	def index
		@lists = List.all
		@list = List.new
	end

	def create
		@list = List.new(list_params)
		#binding.pry
	  if @list.save
	  	redirect_to list_path(@list)
      # if request.xhr?
      # 	render :layout => false
      # else
      # 	redirect_to root_path
      # end
    else
      @lists = List.all
      render :index
    end
	end

	def show
		@list = List.find(params[:id])
	end

	def update
    @list = List.find(params[:id])
    # binding.pry
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
