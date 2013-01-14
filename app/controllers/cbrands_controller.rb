class CbrandsController < ApplicationController
  # GET /cbrands
  # GET /cbrands.json
  def index
    @cbrands = Cbrand.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cbrands }
    end
  end

  # GET /cbrands/1
  # GET /cbrands/1.json
  def show
    @cbrand = Cbrand.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cbrand }
    end
  end

  # GET /cbrands/new
  # GET /cbrands/new.json
  def new
    @cbrand = Cbrand.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cbrand }
    end
  end

  # GET /cbrands/1/edit
  def edit
    @cbrand = Cbrand.find(params[:id])
  end

  # POST /cbrands
  # POST /cbrands.json
  def create
    @cbrand = Cbrand.new(params[:cbrand])

    respond_to do |format|
      if @cbrand.save
        format.html { redirect_to @cbrand, notice: 'Cbrand was successfully created.' }
        format.json { render json: @cbrand, status: :created, location: @cbrand }
      else
        format.html { render action: "new" }
        format.json { render json: @cbrand.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cbrands/1
  # PUT /cbrands/1.json
  def update
    @cbrand = Cbrand.find(params[:id])

    respond_to do |format|
      if @cbrand.update_attributes(params[:cbrand])
        format.html { redirect_to @cbrand, notice: 'Cbrand was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @cbrand.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cbrands/1
  # DELETE /cbrands/1.json
  def destroy
    @cbrand = Cbrand.find(params[:id])
    @cbrand.destroy

    respond_to do |format|
      format.html { redirect_to cbrands_url }
      format.json { head :ok }
    end
  end
end
