class ClinicsController < ApplicationController
  before_action :set_clinic, only: [:show, :edit, :update, :destroy]

  # GET /clinics
  # GET /clinics.json
  def index
    @clinics = Clinic.joins(:entities).where("entities.id = ?", current_user.entity.id)

    if request.xhr?
      render partial: 'clinics', locals: { clinics: @clinics}
    end
    
  end

  #GET /clinics/all
  def all
    @clinics = Clinic.all
  end

  # GET /clinics/1
  # GET /clinics/1.json
  def show
  end

  # GET /clinics/new
  def new
    @clinic = Clinic.new
  end

  # GET /clinics/1/edit
  def update
    respond_to do |format|
      if @clinic.update(clinic_params)
        format.html { redirect_to @clinic, notice: 'List was successfully updated.' }
        format.json { render :show, status: :ok, location: @Clinicclinic}
      else
        format.html { render :edit }
        format.json { render json: @Clinicclinic.errors, status: :unprocessable_entity }
      end
    end
  end

  def clinica
  end


  def search
    @clinics = Clinic.where("name LIKE ?", "%#{params[:q]}%")
  end

  # POST /clinics
  # POST /clinics.json
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clinic
      @clinic = Clinic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clinic_params
      params.require(:clinic).permit(:name, :address, entity_ids: [])
    end
end
