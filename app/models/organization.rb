class Organization < ApplicationRecord
  has_secure_token :secret_key
  has_many :projects
  has_many :user_organizations
  has_many :users, through: :user_organizations

  def add_user(user)
    self.users << user
  end
end
