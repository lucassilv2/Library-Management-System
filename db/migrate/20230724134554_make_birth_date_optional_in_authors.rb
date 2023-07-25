class MakeBirthDateOptionalInAuthors < ActiveRecord::Migration[6.0]
  def change
    change_column :authors, :birth_date, :date, null: true
  end
end
