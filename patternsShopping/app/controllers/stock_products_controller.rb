class StockProductsController < ApplicationController
  # GET /stock_products
  # GET /stock_products.json
  def index
    @stock_products = StockProduct.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @stock_products }
    end
  end

  # GET /stock_products/1
  # GET /stock_products/1.json
  def show
    @stock_product = StockProduct.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @stock_product }
    end
  end

  # GET /stock_products/new
  # GET /stock_products/new.json
  def new
    @stock_product = StockProduct.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @stock_product }
    end
  end

  # GET /stock_products/1/edit
  def edit
    @stock_product = StockProduct.find(params[:id])
  end

  # POST /stock_products
  # POST /stock_products.json
  def create
    @stock_product = StockProduct.new(params[:stock_product])

    respond_to do |format|
      if @stock_product.save
        format.html { redirect_to @stock_product, notice: 'Stock product was successfully created.' }
        format.json { render json: @stock_product, status: :created, location: @stock_product }
      else
        format.html { render action: "new" }
        format.json { render json: @stock_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /stock_products/1
  # PUT /stock_products/1.json
  def update
    @stock_product = StockProduct.find(params[:id])

    respond_to do |format|
      if @stock_product.update_attributes(params[:stock_product])
        format.html { redirect_to @stock_product, notice: 'Stock product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @stock_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stock_products/1
  # DELETE /stock_products/1.json
  def destroy
    @stock_product = StockProduct.find(params[:id])
    @stock_product.destroy

    respond_to do |format|
      format.html { redirect_to stock_products_url }
      format.json { head :no_content }
    end
  end
end
