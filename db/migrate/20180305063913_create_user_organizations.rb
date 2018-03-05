class CreateUserOrganizations < ActiveRecord::Migration[5.1]
  def change
    create_table :user_organizations do |t|
      t.references :user, foreign_key: true
      t.references :organization, foreign_key: true
      t.boolean :admin, null: false, default: false
      t.string :company_position

      t.timestamps
    end
  end
end
