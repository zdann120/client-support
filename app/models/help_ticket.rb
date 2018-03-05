class HelpTicket < ApplicationRecord
  belongs_to :user
  belongs_to :project
  delegate :organization, to: :project

  before_create :generate_ticket_id

  validates :subject, :body, presence: true

  private

  def generate_ticket_id
    self.code = loop do
      rand = /T\d{3}-\d{4}/.gen
      break rand unless HelpTicket.exists?(code: rand)
    end
  end
end
