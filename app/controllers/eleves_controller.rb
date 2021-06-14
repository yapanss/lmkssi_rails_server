class ElevesController < ApplicationController
    before_action :set_eleve, only: [:show, :update, :destroy]
  
    # GET /api/eleves
    def index
      @eleves = Eleve.all
     
      render json: @eleves
    end

    # GET /api/eleves/1
    def show
      classes = @eleve.classe_frequentees
      @eleve['classes'] = classes
      render json: @eleve
    end

    # GET /api/eleves/niveau/:sixieme
    def get_by_niveau
      @eleves = Eleve.where(niveau: params[:niveau])
      render json: @eleves
    end

     # GET /api/eleves/classe/idclasse
     def get_by_classe
      classe = Classe.find(params[:id])
      @eleves = classe.membres
      render json: @eleves
    end

    # POST /api/eleves
    def update
      
      if @eleve.update(eleve_params)
        render json: @eleve
      else
        render json: @eleve.errors, status: :unprocessable_entity
      end
    end

    # PUT /api/eleves/i
    def create
      @eleve = Eleve.new(eleve_params)

      if @eleve.save
        render json: @eleve, status: :created
      else
        render json: @eleve.errors, status: :unprocessable_entity
      end
    end

    # DELETE /api/eleves/i
    def destroy
      @eleve.destroy
    end

    private

    def set_eleve
        @eleve = Eleve.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def eleve_params
      params.require(:eleve).permit(:nom, :prenoms, :matricule, :date_naissance, :niveau,
                    :lieu_naissance, :mere, :tuteur, :domicile, :contact, 
                    :genre, :redoublant, pere: [:nomEtPrenoms, :contact, :email, :domicile, :profession],
                    mere: [:nomEtPrenoms, :contact, :email, :domicile, :profession],
                    tuteur: [:nomEtPrenoms, :contact, :email, :domicile, :profession])
    end
end