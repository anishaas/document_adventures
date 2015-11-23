class ExperiencesController < ApplicationController
def index
  @experiences = Experience.all
end

def show
end

def new
  @experience = Experience.new
end

def edit
end

def create
  @experience = Experience.new(experience_params)
  @experience.user_id = current_user.id
  respond_to do |format|
    if @experience.save
      format.html { redirect_to @experience, notice: 'Experience was successfully created.' }
      format.json { render :show, status: :created, location: @experience }
    else
      format.html { render :new }
      format.json { render json: @experience.errors, status: :unprocessable_entity }
    end
  end
end
private
  # Use callbacks to share common setup or constraints between actions.
  def set_experience
    @experience = experience.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def experience_params
    params.require(:experience).permit(:user_id, :title, :description)
  end
end
