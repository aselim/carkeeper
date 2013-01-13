class CarsController < ApplicationController
  # GET /cars
  # GET /cars.json
  def index
	if (params[:price] == nil  and params[:year] == nil)
    @cars = Car.pagesearch(params[:car_page], params[:sort], params[:me] ,params[:brand], params[:cmodel], params[:used],  "1", "1000000000000")
	elsif (params[:year] == nil)
    @cars = Car.pagesearch(params[:car_page], params[:sort], params[:me] ,params[:brand], params[:cmodel], params[:used], "1", params[:price])
	elsif (params[:price] == nil)
    @cars = Car.pagesearch(params[:car_page], params[:sort], params[:me] ,params[:brand], params[:cmodel], params[:used],  params[:year], "1000000000000")
	else
    @cars = Car.pagesearch(params[:car_page], params[:sort], params[:me] ,params[:brand], params[:cmodel], params[:used],  params[:year], params[:price])
end
    @users = User.all
    @luser = current_user
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cars }
    end


  end

  def search
    @car = Car.new
    @luser = current_user

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @car }
    end
  end


  # GET /cars/1
  # GET /cars/1.json
  def show
    @car = Car.find(params[:id])
    @luser = current_user
    @users = User.all
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @car }
    end
  end

  # GET /cars/new
  # GET /cars/new.json
  def new
    @car = Car.new
    @luser = current_user

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @car }
    end
  end

  # GET /cars/1/edit
  def edit
    @car = Car.find(params[:id])
    @luser = current_user

  end

  # POST /cars
  # POST /cars.json
  def create
    @car = Car.new(params[:car])
    @car.user_id = current_user.id
    @car.datein = Time.now.in_time_zone('Cairo')
    respond_to do |format|
      if @car.save
        format.html { redirect_to @car, notice: 'Car was successfully created.' }
        format.json { render json: @car, status: :created, location: @car }
      else
        format.html { render action: "new" }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cars/1
  # PUT /cars/1.json
  def update
    @car = Car.find(params[:id])

    respond_to do |format|
      if @car.update_attributes(params[:car])
        format.html { redirect_to @car, notice: 'Car was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cars/1
  # DELETE /cars/1.json
  def destroy
    @car = Car.find(params[:id])
    @car.destroy

    respond_to do |format|
      format.html { redirect_to cars_url }
      format.json { head :ok }
    end
  end
end
