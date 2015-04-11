class ShopDirectorsController < ApplicationController

def initialize  
   @subevents = [:join, :accessDetails, :leave]  
  end  
  def organize event  
   @subevents.each { |se| event.send(se) if event.respond_to? se }    
  end  

  # GET /shop_directors
  # GET /shop_directors.json
  def index
    @shop_directors = ShopDirector.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shop_directors }
    end
  end
  
def builderDirector
	ed = EventDirector.new  
		ed.organize(Shop.new)  
			# Output => "Welcome to our shop :)"  
			# "We will recieve your details"
			# "You have left"
		ed.organize(Customer.new)  
			# Output => "I want to sign up"  
			# "I want to access my details"  
			# "I want to leave"
end

  # GET /shop_directors/1
  # GET /shop_directors/1.json
  def show
    @shop_director = ShopDirector.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @shop_director }
    end
  end

  # GET /shop_directors/new
  # GET /shop_directors/new.json
  def new
    @shop_director = ShopDirector.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @shop_director }
    end
  end

  # GET /shop_directors/1/edit
  def edit
    @shop_director = ShopDirector.find(params[:id])
  end

  # POST /shop_directors
  # POST /shop_directors.json
  def create
    @shop_director = ShopDirector.new(params[:shop_director])

    respond_to do |format|
      if @shop_director.save
        format.html { redirect_to @shop_director, notice: 'Shop director was successfully created.' }
        format.json { render json: @shop_director, status: :created, location: @shop_director }
      else
        format.html { render action: "new" }
        format.json { render json: @shop_director.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /shop_directors/1
  # PUT /shop_directors/1.json
  def update
    @shop_director = ShopDirector.find(params[:id])

    respond_to do |format|
      if @shop_director.update_attributes(params[:shop_director])
        format.html { redirect_to @shop_director, notice: 'Shop director was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @shop_director.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shop_directors/1
  # DELETE /shop_directors/1.json
  def destroy
    @shop_director = ShopDirector.find(params[:id])
    @shop_director.destroy

    respond_to do |format|
      format.html { redirect_to shop_directors_url }
      format.json { head :no_content }
    end
  end
end
