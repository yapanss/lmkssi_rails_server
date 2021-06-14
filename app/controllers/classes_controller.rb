class ClassesController < ApplicationController
    before_action :set_classe, only: [:show, :update, :destroy]
  
    # GET /api/classes
    def index
      @classes = Classe.where(annee_scolaire: params[:annee_scolaire])
  
      render json: @classes
    end
  
    # GET /api/classees/1
    def show
      render json: @classe
    end
  
    # POST /api/classes/id
    def update
      if request.request_parameters.has_key?(:selectedMatricules)
        puts 'selectedMatricules existe'
        matricules = request.request_parameters['selectedMatricules']

        eleves = Eleve.in(matricule: matricules)
        puts "*****************"
        eleves.each do |eleve|
          @classe.membres << eleve
        end
        if @classe.save
          render json: @classe
        else
          render json: @classe.errors, status: :unprocessable_entity
        end
      else
        if @classe.update(classe_params)
          render json: @classe
        else
          render json: @classe.errors, status: :unprocessable_entity
        end
      end
    end
  
    # PUT /api/classes/i
    def create
      @classe = Classe.new(classe_params)
  
      if @classe.save
        render json: @classe, status: :created
      else
        render json: @classe.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /api/classes/i
    def destroy
      @classe.destroy
    end
  
    private
  
    def set_classe
        @classe = Classe.find(params[:id])
    end
  
    # Only allow a list of trusted parameters through.
    def classe_params
      params.require(:classe).permit(:nom, :annee_scolaire, :niveau, :niveau_suivant, 
                                      :salle, :lv2, :art, :matri)
    end
  end