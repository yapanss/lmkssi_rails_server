class ConfiguratsController < ApplicationController
    before_action :set_configurat, only: [:show, :update, :destroy]
  
    # GET /api/configurats
    def index
      @configurats = Configurat.all
  
      render json: @configurats
    end
  
    # GET /api/configurats/1
    def show
      render json: @configurat
    end
  
    # POST /api/configurats
    def update
      if @configurat.update(configurat_params)
        render json: @configurat
      else
        render json: @configurat.errors, status: :unprocessable_entity
      end
    end
  
    # PUT /api/configurats/i
    def create
      @configurat = configurat.new(configurat_params)
  
      if @configurat.save
        render json: @configurat, status: :created
      else
        render json: @configurat.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /api/configurats/i
    def destroy
      @configurat.destroy
    end
  
    private
  
    def set_configurat
        @configurat = Configurat.find(params[:id])
    end
  
    # Only allow a list of trusted parameters through.
    def configurat_params
      params.require(:configurat).permit(:annee_scolaire, :nom_ecole, :nombre_periode,
                                            :date_fin, :periodes)
    end
  end