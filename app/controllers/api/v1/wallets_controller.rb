class Api::V1::WalletsController < ApplicationController
  before_action :set_api_v1_wallet, only: %i[ show update destroy ]
  before_action :authenticate_user!

  # GET /api/v1/wallets
  def index
    @wallets = current_user.wallets 

    render json: @wallets
  end

  # GET /api/v1/wallets/1
  def show
    render json: @wallet
  end

  # POST /api/v1/wallets
  def create
    @wallet = Wallet.new(wallet_params)

    if @api_v1_wallet.save
      render json: @wallet, status: :created, location: @wallet
    else
      render json: @wallet.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/wallets/1
  def update
    if @wallet.update(api_v1_wallet_params)
      render json: @wallet
    else
      render json: @wallet.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/wallets/1
  def destroy
    @wallet.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def wallet
      @wallet = current_user.wallets.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def wallet_params
      params.require(:wallet).permit(:address)
    end
end
