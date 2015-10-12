class ListsController < ApplicationController

	def index
		# @user = current_user
		@list = List.new
		@lists = List.order("created_at desc")
		# @lists = List.all
	end

	def create
		# @user = current_user
		@list = List.new(list_params)
		#binding.pry
	  if @list.save
	  	# @list.create(user_id: current_user)
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
