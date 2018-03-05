class Organization::HelpTicketsController < ApplicationController
  before_action :authenticate_user!
  def create
    @organization = Organization.find params[:organization_id]
    @project = Project.find params[:project_id]
    @ticket = @project.help_tickets.new(ticket_params)
    @ticket.user = current_user
    @ticket.save
  end

  private

  def ticket_params
    params.require(:help_ticket).permit(:subject, :body, :urgent)
  end
end
