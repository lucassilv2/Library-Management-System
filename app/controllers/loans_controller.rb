class LoansController < ApplicationController

  def create
    loan = Loan.new(loan_params)
    loan.book = Book.find(params[:book_id])
    loan.customer = Customer.find(params[:customer_id])
    if loan.save
      render json: loan, status: :created
    else
      render json: loan.errors, status: :unprocessable_entity
    end
  end

  def get
    loan = Loan.find(params[:id])
    render json: loan, status: :ok
  end

  def late
    loans = Loan.all
    loans = loans.select { |loan| loan.return_date < Time.now }
    render json: loans, status: :ok
  end

  def list
    loans = Loan.all
    render json: loans, status: :ok
  end

  def return
    loan = Loan.find(params[:id])
    loan.return_date = Time.now
    if loan.save
      render json: loan, status: :ok
    else
      render json: loan.errors, status: :unprocessable_entity
    end
  end

  private

  def loan_params
    params.require(:loan).permit(:loan_date, :return_date)
  end

end
