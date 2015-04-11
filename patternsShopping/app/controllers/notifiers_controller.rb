class NotifiersController < ApplicationController
  # GET /notifiers
  # GET /notifiers.json
  def index
    @notifiers = Notifier.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @notifiers }
    end
  end

  # GET /notifiers/1
  # GET /notifiers/1.json
  def show
    @notifier = Notifier.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @notifier }
    end
  end

  # GET /notifiers/new
  # GET /notifiers/new.json
  def new
    @notifier = Notifier.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @notifier }
    end
  end

  # GET /notifiers/1/edit
  def edit
    @notifier = Notifier.find(params[:id])
  end

  # POST /notifiers
  # POST /notifiers.json
  def create
    @notifier = Notifier.new(params[:notifier])

    respond_to do |format|
      if @notifier.save
        format.html { redirect_to @notifier, notice: 'Notifier was successfully created.' }
        format.json { render json: @notifier, status: :created, location: @notifier }
      else
        format.html { render action: "new" }
        format.json { render json: @notifier.errors, status: :unprocessable_entity }
      end
    end
  end
  
	def update(stock_product, prices)
    puts "The Product is priced at #{prices} price, totaling #{stock_product.price} price altogether."
    puts "The Product has a total stock quantity!" if stock_product.quantity &amp;lt;= stock_product.price
  end
  
  # PUT /notifiers/1
  # PUT /notifiers/1.json
  def update
    @notifier = Notifier.find(params[:id])

    respond_to do |format|
      if @notifier.update_attributes(params[:notifier])
        format.html { redirect_to @notifier, notice: 'Notifier was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @notifier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notifiers/1
  # DELETE /notifiers/1.json
  def destroy
    @notifier = Notifier.find(params[:id])
    @notifier.destroy

    respond_to do |format|
      format.html { redirect_to notifiers_url }
      format.json { head :no_content }
    end
  end
end
