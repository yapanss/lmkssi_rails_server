class EnseignementsController < ApplicationController
    before_action :set_enseignement, only: [:show, :update, :destroy]
  
    # GET /enseignements
    def index
      @enseignements = Enseignement.all
  
      render json: @enseignements
    end
  
    # GET /enseignements/1
    def show
      render json: @enseignement
    end
  
    # POST /enseignements
    def create
      @enseignement = Enseignement.new(enseignement_params)
  
      if @enseignement.save
        render json: @enseignement, status: :created, location: @enseignement
      else
        render json: @enseignement.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /enseignements/1
    def update
      if @enseignement.update(enseignement_params)
        render json: @enseignement
      else
        render json: @enseignement.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /enseignements/1
    def destroy
      @enseignement.destroy
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_enseignement
        @enseignement = Enseignement.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def enseignement_params
        params.require(:enseignement).permit(:annee_scolaire, :matiere, :coefficient, :horaires)
      end
  end
  