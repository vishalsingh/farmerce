class VideoRequestsController < ApplicationController
  before_action :set_video_request, only: [:show, :edit, :update, :destroy]

  # GET /video_requests
  # GET /video_requests.json
  def index
    @video_requests = VideoRequest.all
  end

  # GET /video_requests/1
  # GET /video_requests/1.json
  def show
  end

  # GET /video_requests/new
  def new
    @video_request = VideoRequest.new
  end

  # GET /video_requests/1/edit
  def edit
  end

  # POST /video_requests
  # POST /video_requests.json
  def create
    @video_request = VideoRequest.new(video_request_params)

    respond_to do |format|
      if @video_request.save
        format.html { redirect_to @video_request, notice: 'Video request was successfully created.' }
        format.js   { }
        format.json { render :show, status: :created, location: @video_request }
      else
        format.html { render :new }
        format.js   { }
        format.json { render json: @video_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /video_requests/1
  # PATCH/PUT /video_requests/1.json
  def update
    respond_to do |format|
      if @video_request.update(video_request_params)
        format.html { redirect_to @video_request, notice: 'Video request was successfully updated.' }
        format.json { render :show, status: :ok, location: @video_request }
      else
        format.html { render :edit }
        format.json { render json: @video_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /video_requests/1
  # DELETE /video_requests/1.json
  def destroy
    @video_request.destroy
    respond_to do |format|
      format.html { redirect_to video_requests_url, notice: 'Video request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_video_request
      @video_request = VideoRequest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def video_request_params
      params.require(:video_request).permit(:description)
    end
end
