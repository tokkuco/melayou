class ProductsController < ApplicationController

	def index
		@products = Product.all
	end

	def new
		@product = Product.new
	end

	def create
    	@product = Product.new(params.require(:product).permit(:title, :subtitle, :price))

    	respond_to do |format|
      		if @product.save
		        format.html { redirect_to products_path, notice: 'Product was successfully created.' }
		        format.json { render :show, status: :created, location: @product }
	      	else
		        format.html { render :new }
		        format.json { render json: @product.errors, status: :unprocessable_entity }
	      end
	  end
    end

   

end
