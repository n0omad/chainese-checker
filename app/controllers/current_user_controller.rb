class CurrentUserController < ApplicationController
  before_action :authenticate_user!
  def index
    render json: UserSerializer.new(current_user).serializable_hash[:data][:attributes], status: :ok
  end


  def payment

    # gets payment txid using params post
    # gets date of payment
    # validates using infura or something
    # if valid saves current_user.payment send 200
    # if not valid sends error 400
    # if failed connection to infura sends 500
    render json: UserSerializer.new(current_user).serializable_hash[:data][:attributes], status: :ok
  end

  def ballance
    # get
    # sum(current_user.payments ammount) - sum(current_user.withdraw) = ballance
    render json: UserSerializer.new(current_user).serializable_hash[:data][:attributes], status: :ok
  end

  def interest
    # gets last withdraw from db
    # gets payments after last withdraw
    # calculates 3 percent for each payment for each month
    # returns ballance with total interest
    render json: UserSerializer.new(current_user).serializable_hash[:data][:attributes], status: :ok
  end

  def withdraw
    # calculates interest 
    # sends txid of withrawal
    # saves txid and date
    render json: UserSerializer.new(current_user).serializable_hash[:data][:attributes], status: :ok
  end



  private

  def set_payment

  end

  def set_withdraw

  end


end
