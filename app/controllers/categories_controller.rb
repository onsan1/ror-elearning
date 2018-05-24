class CategoriesController < ApplicationController

  def index
	   @categories = Category.all
  end

  def new
  	 @category = Category.new
  end

  def show
     @category = Category.find(params[:id])
     
  end

  def create
      @category = Category.new(category_params)
      if @category.save
      	flash[:success] = "Welcom to category"
      	redirect_to categories_url
      else
      	render 'new'
      end
   end

   def edit
   	  @category = Category.find(params[:id])
   end

   def update
   	  @category = Category.find(params[:id])
   	  if @category.update_attuributes(category_params)
   	  	flash[:success] = "Category update!"
   	  	redirect_to categories_path
   	  else
   	  	render 'edit'
   	  end
   	end

   	def  destroy
   		@category = Category.find(params[:id])
   		if @category.destroy
   			flash[:success] = "Category deleted"
   			redirect_to admin_categories_path
   		else
   			redirect_to categories_path
   		end
   	end

   	private

   	def category_params
   		params.require(:category).permit(:title, :description)
   	end
  end

