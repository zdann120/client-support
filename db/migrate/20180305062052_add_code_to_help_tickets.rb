class AddCodeToHelpTickets < ActiveRecord::Migration[5.1]
  def change
    add_column :help_tickets, :code, :string, null: false
    add_index :help_tickets, :code, unique: true
  end
end
