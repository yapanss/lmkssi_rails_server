class ConseilenseignementsController < ApplicationController
    before_action :set_conseilenseignement, only: [:show, :update, :destroy]
  
    # GET /api/conseilenseignements
    def index
      @conseilenseignements = Conseilenseignement.all
  
      render json: @conseilenseignements
    end
  
    # GET /api/conseilenseignements/1
    def show
      render json: @conseilenseignement
    end
  
    # POST /api/conseilenseignements
    def update
      if @conseilenseignement.update(conseilenseignement_params)
        render json: @conseilenseignement
      else
        render json: @conseilenseignement.errors, status: :unprocessable_entity
      end
    end
  
    # PUT /api/conseilenseignements/i
    def create
      @conseilenseignement = Conseilenseignement.new(conseilenseignement_params)
  
      if @conseilenseignement.save
        render json: @conseilenseignement, status: :created
      else
        render json: @conseilenseignement.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /api/conseilenseignements/i
    def destroy
      @conseilenseignement.destroy
    end
  
    private
  
    def set_conseilenseignement
        @conseilenseignement = Conseilenseignement.find(params[:id])
    end
  
    # Only allow a list of trusted parameters through.
    def conseilenseignement_params
      params.require(:conseilenseignement).permit(:matiere)
    end
  end