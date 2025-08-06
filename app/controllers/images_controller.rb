class ImagesController < ApplicationController
  def new
    @image = Image.new
  end

  def create
    @image = Image.new
    @image.file.attach(params[:image][:file])

    if @image.save
      redirect_to image_path(@image)
    else
      render :new
    end
  end

  def show
    @image = Image.find(params[:id])
  end
end
