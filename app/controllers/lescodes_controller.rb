class LescodesController < ApplicationController
    before_action :set_lescode, only: [:show, :update, :destroy]
  
    # GET /api/lescodes
    def index
      @lescodes = Lescode.all
  
      render json: @lescodes
    end
  
    # GET /api/lescodes/1
    def show
      render json: @lescode
    end
  
    # POST /api/lescodes
    def update
      if @lescode.update(lescode_params)
        render json: @lescode
      else
        render json: @lescode.errors, status: :unprocessable_entity
      end
    end
  
    # PUT /api/lescodes/i
    def create
      @lescode = Lescode.new(lescode_params)
  
      if @lescode.save
        render json: @lescode, status: :created
      else
        render json: @lescode.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /api/lescodes/i
    def destroy
      @lescode.destroy
    end
  
    private
  
    def set_lescode
        @lescode = Lescode.find(params[:id])
    end
  
    # Only allow a list of trusted parameters through.
    def lescode_params
      params.require(:lescode).permit(:matiere, :code)
    end
  end