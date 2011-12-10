class ArtykulsController < ApplicationController
  # GET /artykuls
  # GET /artykuls.xml
  def index
    @artykuls = Artykul.all
    respond_with(@artykuls)
  end

  # GET /artykuls/1
  # GET /artykuls/1.xml
  def show
    @artykul = Artykul.find(params[:id])
    respond_with(@artykul)
  end

  # GET /artykuls/new
  # GET /artykuls/new.xml
  def new
    @artykul = Artykul.new
    respond_with(@artykul)
  end

  # GET /artykuls/1/edit
  def edit
    @artykul = Artykul.find(params[:id])
  end

  # POST /artykuls
  # POST /artykuls.xml
  def create
    @artykul = Artykul.new(params[:artykul])
    @artykul.save
    respond_with(@artykul)
  end

  # PUT /artykuls/1
  # PUT /artykuls/1.xml
  def update
    @artykul = Artykul.find(params[:id])
    @artykul.update_attributes(params[:artykul])
    respond_with(@artykul)
  end

  # DELETE /artykuls/1
  # DELETE /artykuls/1.xml
  def destroy
    @artykul = Artykul.find(params[:id])
    @artykul.destroy
    respond_with(@artykul)
  end
end
