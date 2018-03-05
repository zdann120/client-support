class Project < ApplicationRecord
  belongs_to :organization
  has_many :help_tickets
  has_secure_token :secret_key
  enum status: [:inactive, :active]
end
