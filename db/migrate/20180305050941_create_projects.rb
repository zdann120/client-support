class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.references :organization, foreign_key: true
      t.string :title, null: false
      t.string :secret_key
      t.integer :status, null: false, default: 0
      t.text :description

      t.timestamps
    end
    add_index :projects, :secret_key, unique: true
    add_index :projects, :title, unique: true
  end
end
