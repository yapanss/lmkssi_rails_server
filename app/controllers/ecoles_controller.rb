class EcolesController < ApplicationController
    before_action :set_ecole, only: [:show, :update, :destroy]
  
    # GET /api/ecoles
    def index
      @ecoles = Ecole.all
  
      render json: @ecoles
    end
  
    # GET /api/ecoles/1
    def show
      render json: @ecole
    end
  
    # POST /api/ecoles
    def update
      if @ecole.update(ecole_params)
        render json: @ecole
      else
        render json: @ecole.errors, status: :unprocessable_entity
      end
    end
  
    # PUT /api/ecoles/i
    def create
      @ecole = Ecole.new(ecole_params)
  
      if @ecole.save
        render json: @ecole, status: :created
      else
        render json: @ecole.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /api/ecoles/i
    def destroy
      @ecole.destroy
    end
  
    private
  
    def set_ecole
        @ecole = Ecole.find(params[:id])
    end
  
    # Only allow a list of trusted parameters through.
    def ecole_params
      params.require(:ecole).permit(:nom_ecole, :titre_chef, :nom_chef, :annee_scolaire, :nombre_periode, :decoupage_annee, 
                                      :date_fin)
    end
end
