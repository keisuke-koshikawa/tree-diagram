class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.references :company, null: false, index: true, foreign_key: true
      t.references :department, null: false, index: true, foreign_key: true

      t.timestamps
    end
  end
end
