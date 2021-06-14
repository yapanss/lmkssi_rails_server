class EssaisController < ApplicationController
  before_action :set_essai, only: [:show, :update, :destroy]

  # GET /essais
  def index
    @essais = Essai.all

    render json: @essais
  end

  # GET /essais/1
  def show
    render json: @essai
  end

  # POST /essais
  def create
    @essai = Essai.new(essai_params)

    if @essai.save
      render json: @essai, status: :created, location: @essai
    else
      render json: @essai.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /essais/1
  def update
    if @essai.update(essai_params)
      render json: @essai
    else
      render json: @essai.errors, status: :unprocessable_entity
    end
  end

  # DELETE /essais/1
  def destroy
    @essai.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_essai
      @essai = Essai.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def essai_params
      params.require(:essai).permit(:nom, :prenoms)
    end
end
