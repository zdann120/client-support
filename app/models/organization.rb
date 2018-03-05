class Organization < ApplicationRecord
  has_secure_token :secret_key
end
