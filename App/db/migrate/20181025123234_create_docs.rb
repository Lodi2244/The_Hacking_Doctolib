class CreateDocs < ActiveRecord::Migration[5.2]
  def change
    create_table :docs do |t|
      t.string :first_name
      t.string :last_name
      t.integer :zip_code
      t.references :city, foreign_key: true
      t.references :specialty, foreign_key: true
      t.timestamps
    end
  end
end
