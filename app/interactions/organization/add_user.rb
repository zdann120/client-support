class Organization::AddUser < ActiveInteraction::Base
  string :email
  object :organization

  def execute
    if User.exists?(email: email)
      user = User.find_by(email: email)
    else
      user = User.create(email: email, password: SecureRandom.uuid, username: email.split('@')[0])
    end

    assignment = UserOrganization.create(user: user, organization: organization, admin: false)

    unless assignment.save
      errors.merge! assignment.errors
    end
    user
  end
end