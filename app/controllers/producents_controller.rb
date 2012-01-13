class ProducentsController < ApplicationController
  # GET /producents
  # GET /producents.xml
  def index
    @producents = Producent.all
    respond_with(@producents)
  end

  # GET /producents/1
  # GET /producents/1.xml
  def show
   @producent = Producent.find(params[:id])
   respond_with(@producent)
  end

  # GET /producents/new
  # GET /producents/new.xml
  def new
    @producent = Producent.new
    respond_with(@producent)
  end

  # GET /producents/1/edit
  def edit
    @producent = Producent.find(params[:id])
  end

  # POST /producents
  # POST /producents.xml
  def create
    @producent = Producent.new(params[:producent])
    flash[:notice] = 'Producent was successfully created.' if @producent.save
    respond_with(@producent)
  end

  # PUT /producents/1
  # PUT /producents/1.xml
  def update
    @producent = Producent.find(params[:id])
    flash[:notice] = 'Producent was successfully updated.' if @producent.update_attributes(params[:producent])
    respond_with(@producent)
  end

  # DELETE /producents/1
  # DELETE /producents/1.xml
  def destroy
    @producent = Producent.find(params[:id])
    @producent.destroy
    respond_with(@producent)
  end
end
