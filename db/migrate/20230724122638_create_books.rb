class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :publisher
      t.integer :num_copies
      t.string :ISBN

      t.timestamps
    end
  end
end
