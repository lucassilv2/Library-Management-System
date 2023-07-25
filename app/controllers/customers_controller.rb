class CustomersController < ApplicationController

  def create
    customer = Customer.new(customer_params)
    if customer.save
      render json: customer, status: :created
    else
      render json: customer.errors, status: :unprocessable_entity
    end
  end

  def get
    customer = Customer.find(params[:id])
    render json: customer, status: :ok
  end

  def list
    customers = Customer.all
    render json: customers, status: :ok
  end

  private

  def customer_params
    params.require(:customer).permit(:name, :phone_number, :address)
  end

end
