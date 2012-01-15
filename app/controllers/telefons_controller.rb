class TelefonsController < ApplicationController
  # GET /telefons
  # GET /telefons.xml
  def index
  @telefons = Telefon.page(params[:page]).per(1).where(producent_id: params['producent_id'].to_i)
    respond_with(@telefons)
  end

  # GET /telefons/1
  # GET /telefons/1.xml
  def show
    @telefon = Telefon.find(params[:id])
    respond_with(@telefon)
  end

  # GET /telefons/new
  # GET /telefons/new.xml
  def new
    @telefon = Telefon.new
    respond_with(@telefon)
  end

  # GET /telefons/1/edit
  def edit
    @telefon = Telefon.find(params[:id])
  end

  # POST /telefons
  # POST /telefons.xml
  def create
    @telefon = Telefon.new(params[:telefon])
    @telefon.save
    respond_with(@telefon)
  end

  # PUT /telefons/1
  # PUT /telefons/1.xml
  def update
    @telefon = Telefon.find(params[:id])
    @telefon.update_attributes(params[:telefon])
    respond_with(@telefon)
  end

  # DELETE /telefons/1
  # DELETE /telefons/1.xml
  def destroy
    @telefon = Telefon.find(params[:id])
    @telefon.destroy
    respond_with(@telefon)
  end
end
