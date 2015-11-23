class MediaBoardController < ApplicationController

  def index
    @mediaboards = Mediaboard.all
  end

  def show
  end

  def new
    @mediaboard = Mediaboard.new
  end

  def edit
  end

  def create
    @mediaboard = Mediaboard.new(mediaboard_params)
    @mediaboard.user == current_user.id
    respond_to do |format|
      if @mediaboard.save
        format.html { redirect_to @mediaboard, notice: 'Mediaboard was successfully created.' }
        format.json { render :show, status: :created, location: @mediaboard }
      else
        format.html { render :new }
        format.json { render json: @mediaboard.errors, status: :unprocessable_entity }
      end
    end
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mediaboard
      @mediaboard = mediaboard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mediaboard_params
      params.require(:mediaboard).permit(:experience)
    end
  end
