class HelpTicketsController < ApplicationController
  before_action :set_help_ticket, only: [:show, :edit, :update, :destroy]
  before_action :set_organization
  before_action :set_project

  # GET /help_tickets
  # GET /help_tickets.json
  def index
    @help_tickets = @project.help_tickets
  end

  # GET /help_tickets/1
  # GET /help_tickets/1.json
  def show
  end

  # GET /help_tickets/new
  def new
    @help_ticket = @project.help_tickets.new
  end

  # GET /help_tickets/1/edit
  def edit
  end

  # POST /help_tickets
  # POST /help_tickets.json
  def create
    @help_ticket = @project.help_tickets.new(help_ticket_params)

    respond_to do |format|
      if @help_ticket.save
        format.html { redirect_to @help_ticket, notice: 'Help ticket was successfully created.' }
        format.json { render :show, status: :created, location: @help_ticket }
      else
        format.html { render :new }
        format.json { render json: @help_ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /help_tickets/1
  # PATCH/PUT /help_tickets/1.json
  def update
    respond_to do |format|
      if @help_ticket.update(help_ticket_params)
        format.html { redirect_to @help_ticket, notice: 'Help ticket was successfully updated.' }
        format.json { render :show, status: :ok, location: @help_ticket }
      else
        format.html { render :edit }
        format.json { render json: @help_ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /help_tickets/1
  # DELETE /help_tickets/1.json
  def destroy
    @help_ticket.destroy
    respond_to do |format|
      format.html { redirect_to help_tickets_url, notice: 'Help ticket was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_help_ticket
      @help_ticket = HelpTicket.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def help_ticket_params
      params.require(:help_ticket).permit(:subject, :body, :urgent, :status)
    end

    def set_organization
      @organization = Organization.find params[:organization_id]
    end

  def set_project
    @project = Project.find params[:project_id]
  end
end
