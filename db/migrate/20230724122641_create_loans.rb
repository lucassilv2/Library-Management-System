class CreateLoans < ActiveRecord::Migration[7.0]
  def change
    create_table :loans do |t|
      t.date :loan_date
      t.date :return_date

      t.timestamps
    end
  end
end
