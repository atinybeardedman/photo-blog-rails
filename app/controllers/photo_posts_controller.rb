class PhotoPostsController < ApplicationController
  before_action :set_photo_post, only: %i[ show edit update destroy ]

  # GET /photo_posts or /photo_posts.json
  def index
    @photo_posts = PhotoPost.all
  end

  # GET /photo_posts/1 or /photo_posts/1.json
  def show
  end

  # GET /photo_posts/new
  def new
    @photo_post = PhotoPost.new
  end

  # GET /photo_posts/1/edit
  def edit
  end

  # POST /photo_posts or /photo_posts.json
  def create
    @photo_post = PhotoPost.new(photo_post_params)

    respond_to do |format|
      if @photo_post.save
        format.html { redirect_to photo_post_url(@photo_post), notice: "Photo post was successfully created." }
        format.json { render :show, status: :created, location: @photo_post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @photo_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /photo_posts/1 or /photo_posts/1.json
  def update
    respond_to do |format|
      if @photo_post.update(photo_post_params)
        format.html { redirect_to photo_post_url(@photo_post), notice: "Photo post was successfully updated." }
        format.json { render :show, status: :ok, location: @photo_post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @photo_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photo_posts/1 or /photo_posts/1.json
  def destroy
    @photo_post.destroy

    respond_to do |format|
      format.html { redirect_to photo_posts_url, notice: "Photo post was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photo_post
      @photo_post = PhotoPost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def photo_post_params
      params.fetch(:photo_post, {})
    end
end
