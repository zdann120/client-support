class CreateHelpTickets < ActiveRecord::Migration[5.1]
  def change
    create_table :help_tickets do |t|
      t.references :user, foreign_key: true
      t.references :project, foreign_key: true
      t.string :subject, null: false
      t.text :body
      t.boolean :urgent, null: false, default: false
      t.integer :status, null: false, default: 0

      t.timestamps
    end
  end
end
