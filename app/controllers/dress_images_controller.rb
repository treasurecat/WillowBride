class DressImagesController < ApplicationController
  before_action :set_dress_image, only: [:show, :edit, :update, :destroy]

  # GET /dress_images
  # GET /dress_images.json
  def index
    @dress_images = DressImage.order("image_updated_at DESC").all
  end

  # GET /dress_images/1
  # GET /dress_images/1.json
  def show
  end

  # GET /dress_images/new
  def new
    @dress_image = DressImage.new
  end

  # GET /dress_images/1/edit
  def edit
  end

  # POST /dress_images
  # POST /dress_images.json
  def create
    @dress_image = DressImage.new(dress_image_params)

    respond_to do |format|
      if @dress_image.save
        format.html { redirect_to @dress_image, notice: 'Dress image was successfully created.' }
        format.json { render :show, status: :created, location: @dress_image }
      else
        format.html { render :new }
        format.json { render json: @dress_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dress_images/1
  # PATCH/PUT /dress_images/1.json
  def update
    respond_to do |format|
      if @dress_image.update(dress_image_params)
        format.html { redirect_to @dress_image, notice: 'Dress image was successfully updated.' }
        format.json { render :show, status: :ok, location: @dress_image }
      else
        format.html { render :edit }
        format.json { render json: @dress_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dress_images/1
  # DELETE /dress_images/1.json
  def destroy
    @dress_image.destroy
    respond_to do |format|
      format.html { redirect_to dress_images_url, notice: 'Dress image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dress_image
      @dress_image = DressImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dress_image_params
      params.require(:dress_image).permit(:dress_id, :image)
    end
end
