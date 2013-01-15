class CarsController < ApplicationController
  # GET /cars
  # GET /cars.json
  def index
    @year=1600
    @price=6500000

	if (params[:me])
    @cars = Car.where("user_id = ?",params[:me]).pagesearch(params[:car_page], params[:sort], params[:brand], params[:cmodel])
	else

        if (params[:year] != nil)
	@year=params[:year]
	end

        if (params[:price]!= nil)
        @price=params[:price]
        end
        
    @cars = Car.where("year >= ? and price <= ?",@year ,@price).pagesearch(params[:car_page], params[:sort], params[:brand], params[:cmodel])
end
    @users = User.all
    @luser = current_user


  end

  def search
    @car = Car.new
    @luser = current_user

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @car }
    end
  end

  def about
@luser = current_user
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
