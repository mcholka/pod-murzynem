class MobilesController < ApplicationController
  # GET /mobiles
  # GET /mobiles.xml
  def index
    @mobiles = Mobile.order(:source).page(params[:page]).per(5)
    respond_with(@mobiles)
  end

  # GET /mobiles/1
  # GET /mobiles/1.xml
  def show
    @mobile = Mobile.find(params[:id])
    respond_with(@mobile)
  end

  # GET /mobiles/new
  # GET /mobiles/new.xml
  def new
    @mobile = Mobile.new
    respond_with(@mobile)
  end

  # GET /mobiles/1/edit
  def edit
    @mobile = Mobile.find(params[:id])
  end

  # POST /mobiles
  # POST /mobiles.xml
  def create
    @mobile = Mobile.new(params[:mobile])
    @mobile.save
    respond_with(@mobile)
  end

  # PUT /mobiles/1
  # PUT /mobiles/1.xml
  def update
    @mobile = Mobile.find(params[:id])
    @mobile.update_attributes(params[:mobile])
    respond_with(@mobile)
  end

  # DELETE /mobiles/1
  # DELETE /mobiles/1.xml
  def destroy
    @mobile = Mobile.find(params[:id])
    @mobile.destroy
    respond_with(@mobile)
  end
end
