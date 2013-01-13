class CmodelsController < ApplicationController
  # GET /cmodels
  # GET /cmodels.json
  def index
    @cmodels = Cmodel.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cmodels }
    end
  end

  # GET /cmodels/1
  # GET /cmodels/1.json
  def show
    @cmodel = Cmodel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cmodel }
    end
  end

  # GET /cmodels/new
  # GET /cmodels/new.json
  def new
    @cmodel = Cmodel.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cmodel }
    end
  end

  # GET /cmodels/1/edit
  def edit
    @cmodel = Cmodel.find(params[:id])
  end

  # POST /cmodels
  # POST /cmodels.json
  def create
    @cmodel = Cmodel.new(params[:cmodel])

    respond_to do |format|
      if @cmodel.save
        format.html { redirect_to @cmodel, notice: 'Cmodel was successfully created.' }
        format.json { render json: @cmodel, status: :created, location: @cmodel }
      else
        format.html { render action: "new" }
        format.json { render json: @cmodel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cmodels/1
  # PUT /cmodels/1.json
  def update
    @cmodel = Cmodel.find(params[:id])

    respond_to do |format|
      if @cmodel.update_attributes(params[:cmodel])
        format.html { redirect_to @cmodel, notice: 'Cmodel was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @cmodel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cmodels/1
  # DELETE /cmodels/1.json
  def destroy
    @cmodel = Cmodel.find(params[:id])
    @cmodel.destroy

    respond_to do |format|
      format.html { redirect_to cmodels_url }
      format.json { head :ok }
    end
  end
end
