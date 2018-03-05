class CreateOrganizations < ActiveRecord::Migration[5.1]
  def change
    create_table :organizations do |t|
      t.string :secret_key
      t.string :name, null: false

      t.timestamps
    end
    add_index :organizations, :secret_key, unique: true
    add_index :organizations, :name, unique: true
  end
end
