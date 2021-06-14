class EvaluationsController < ApplicationController
    before_action :set_evaluation, only: [:show, :update, :destroy]
  
    # GET /api/evaluations
    def index
      @evaluations = Evaluation.all
  
      render json: @evaluations
    end
  
    # GET /api/evaluations/1
    def show
      render json: @evaluation
    end
  
    # POST /api/evaluations
    def update
      if @evaluation.update(evaluation_params)
        render json: @evaluation
      else
        render json: @evaluation.errors, status: :unprocessable_entity
      end
    end
  
    # PUT /api/evaluations/i
    def create
      @evaluation = Evaluation.new(evaluation_params)
  
      if @evaluation.save
        render json: @evaluation, status: :created
      else
        render json: @evaluation.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /api/evaluations/i
    def destroy
      @evaluation.destroy
    end
  
    private
  
    def set_evaluation
        @evaluation = Evaluation.find(params[:id])
    end
  
    # Only allow a list of trusted parameters through.
    def evaluation_params
      params.require(:evaluation).permit(:moyenne, :annee_scolaire, :matiere, :periode, :coefficient)
    end
  end