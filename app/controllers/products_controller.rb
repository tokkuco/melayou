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

    def edit
    	@product = Product.find(params[:id])
    end

   def update
   	@product = Product.find(params[:id])

    respond_to do |format|
      if @product.update(params.require(:product).permit(:title, :subtitle, :price))
        format.html { redirect_to products_path, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end





end
