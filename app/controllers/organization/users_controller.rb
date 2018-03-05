class Organization::UsersController < ApplicationController
  def create
    @organization = Organization.find params[:organization_id]
    outcome = Organization::AddUser.run(email: params[:user][:email], organization: @organization)
    if outcome.valid?
      @user = outcome.result
      render :create_success
    else
      render :create_error
    end
  end
end
