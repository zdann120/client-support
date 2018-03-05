class Project < ApplicationRecord
  belongs_to :organization
  has_secure_token :secret_key
end
