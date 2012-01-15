class PorownajsController < ApplicationController
  # GET /porownajs
  # GET /porownajs.xml
  def index
    @porownajs = Porownaj.all
    respond_with(@porownajs)
  end

  # GET /porownajs/1
  # GET /porownajs/1.xml
  def show
    @porownaj = Porownaj.find(params[:id])
    respond_with(@porownaj)
  end

  # GET /porownajs/new
  # GET /porownajs/new.xml
  def new
    @porownaj = Porownaj.new
    respond_with(@porownaj)
  end

  # GET /porownajs/1/edit
  def edit
    @porownaj = Porownaj.find(params[:id])
  end

  # POST /porownajs
  # POST /porownajs.xml
  def create
    @porownaj = Porownaj.new(params[:porownaj])
    @porownaj.save
    respond_with(@porownaj)
  end

  # PUT /porownajs/1
  # PUT /porownajs/1.xml
  def update
    @porownaj = Porownaj.find(params[:id])
    @porownaj.update_attributes(params[:porownaj])
    respond_with(@porownaj)
  end

  # DELETE /porownajs/1
  # DELETE /porownajs/1.xml
  def destroy
    @porownaj = Porownaj.find(params[:id])
    @porownaj.destroy
    respond_with(@porownaj)
  end
end
