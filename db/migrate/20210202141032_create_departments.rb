class CreateDepartments < ActiveRecord::Migration[6.0]
  def change
    create_table :departments do |t|
      t.string :name
      t.string :ancestry
      t.integer :ancestry_depth, default: 0
      t.references :company, null: false, index: true, foreign_key: true

      t.timestamps
    end

    add_index :departments, :ancestry
  end
end
