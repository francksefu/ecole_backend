class DetailPaiementsController < ApplicationController
  before_action :set_detail_paiement, only: %i[ show edit update destroy ]

  # GET /detail_paiements or /detail_paiements.json
  def index
    @detail_paiements = DetailPaiement.all
  end

  # GET /detail_paiements/1 or /detail_paiements/1.json
  def show
  end

  # GET /detail_paiements/new
  def new
    @detail_paiement = DetailPaiement.new
  end

  # GET /detail_paiements/1/edit
  def edit
  end

  # POST /detail_paiements or /detail_paiements.json
  def create
    @detail_paiement = DetailPaiement.new(detail_paiement_params)

    respond_to do |format|
      if @detail_paiement.save
        format.html { redirect_to detail_paiement_url(@detail_paiement), notice: "Detail paiement was successfully created." }
        format.json { render :show, status: :created, location: @detail_paiement }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @detail_paiement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /detail_paiements/1 or /detail_paiements/1.json
  def update
    respond_to do |format|
      if @detail_paiement.update(detail_paiement_params)
        format.html { redirect_to detail_paiement_url(@detail_paiement), notice: "Detail paiement was successfully updated." }
        format.json { render :show, status: :ok, location: @detail_paiement }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @detail_paiement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /detail_paiements/1 or /detail_paiements/1.json
  def destroy
    @detail_paiement.destroy!

    respond_to do |format|
      format.html { redirect_to detail_paiements_url, notice: "Detail paiement was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_detail_paiement
      @detail_paiement = DetailPaiement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def detail_paiement_params
      params.require(:detail_paiement).permit(:frais_name, :montant, :end_date, :description)
    end
end
