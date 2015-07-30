class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    id = params["id"].to_i
    @photo = Photo.find(id).source
    @caption = Photo.find(id).caption
  end

  def new_form
  end

  def create_row
    p = Photo.new
    p.caption = params["the_caption"]
    p.source = params["the_source"]
    p.save
    redirect_to("http://localhost:3000/photos")
  end

  def destroy
    id = params["id"]
    Photo.find(id).destroy
    redirect_to("http://localhost:3000/photos")
  end

  def edit_form
    id = params["id"].to_i
    @photo = Photo.find(id)
  end

  def update_row
    p = Photo.find(params["id"].to_i)
    p.caption = params["the_caption"]
    p.source = params["the_source"]
    p.save
    redirect_to("http://localhost:3000/photos")
  end


end
