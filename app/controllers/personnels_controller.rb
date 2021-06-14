class PersonnelsController < ApplicationController
  before_action :set_personnel, only: [:show, :update, :destroy]

  # GET /api/personnels
  def index
    @personnels = Personnel.all

    render json: @personnels
  end

  # GET /api/personnels/1
  def show
    render json: @personnel
  end

  # POST /api/personnels
  def update
    if @personnel.update(personnel_params)
      render json: @personnel
    else
      render json: @personnel.errors, status: :unprocessable_entity
    end
  end

  # PUT /api/personnels/i
  def create
    @personnel = Personnel.new(personnel_params)

    if @personnel.save
      render json: @personnel, status: :created
    else
      render json: @personnel.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/personnels/i
  def destroy
    @personnel.destroy
  end

  private

  def set_personnel
      @personnel = Personnel.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def personnel_params
    params.require(:personnel).permit(:nom, :prenoms, :matricule, :date_naissance, 
                  :lieu_naissance, :situation_matrimoniale, :domicile, :contact, :genre)
  end
end