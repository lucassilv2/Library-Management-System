class MakeCountryOfOriginOptionalInAuthors < ActiveRecord::Migration[6.0]
  def change
    change_column :authors, :country_of_origin, :string, null: true
  end
end
