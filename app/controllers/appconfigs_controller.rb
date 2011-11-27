class AppconfigsController < ApplicationController
  # GET /appconfigs
  # GET /appconfigs.json
  def about
    respond_to do |format|
      format.html # about.html.erb
    end
  end
  
  def index
    @appconfigs = Appconfig.page(params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @appconfigs }
    end
  end

  # GET /appconfigs/1
  # GET /appconfigs/1.json
  def show
    @appconfig = Appconfig.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @appconfig }
    end
  end

  # GET /appconfigs/new
  # GET /appconfigs/new.json
  def new
    @appconfig = Appconfig.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @appconfig }
    end
  end

  # GET /appconfigs/1/edit
  def edit
    @appconfig = Appconfig.find(params[:id])
  end

  # POST /appconfigs
  # POST /appconfigs.json
  def create
    @appconfig = Appconfig.new(params[:appconfig])

    respond_to do |format|
      if @appconfig.save
        format.html { redirect_to @appconfig, notice: 'Appconfig was successfully created.' }
        format.json { render json: @appconfig, status: :created, location: @appconfig }
      else
        format.html { render action: "new" }
        format.json { render json: @appconfig.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /appconfigs/1
  # PUT /appconfigs/1.json
  def update
    @appconfig = Appconfig.find(params[:id])

    respond_to do |format|
      if @appconfig.update_attributes(params[:appconfig])
        format.html { redirect_to @appconfig, notice: 'Appconfig was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @appconfig.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appconfigs/1
  # DELETE /appconfigs/1.json
  def destroy
    @appconfig = Appconfig.find(params[:id])
    @appconfig.destroy

    respond_to do |format|
      format.html { redirect_to appconfigs_url }
      format.json { head :ok }
    end
  end
end
