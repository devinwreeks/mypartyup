class EventPartnershipsController < ApplicationController
  before_action :set_event_partnership, only: %i[ show edit update destroy ]

  # GET /event_partnerships or /event_partnerships.json
  def index
    @event_partnerships = EventPartnership.all
  end

  # GET /event_partnerships/1 or /event_partnerships/1.json
  def show
  end

  # GET /event_partnerships/new
  def new
    @event_partnership = EventPartnership.new
  end

  # GET /event_partnerships/1/edit
  def edit
  end

  # POST /event_partnerships or /event_partnerships.json
  def create
    @event_partnership = EventPartnership.new(event_partnership_params)

    respond_to do |format|
      if @event_partnership.save
        format.html { redirect_to event_partnership_url(@event_partnership), notice: "Event partnership was successfully created." }
        format.json { render :show, status: :created, location: @event_partnership }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @event_partnership.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_partnerships/1 or /event_partnerships/1.json
  def update
    respond_to do |format|
      if @event_partnership.update(event_partnership_params)
        format.html { redirect_to event_partnership_url(@event_partnership), notice: "Event partnership was successfully updated." }
        format.json { render :show, status: :ok, location: @event_partnership }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @event_partnership.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_partnerships/1 or /event_partnerships/1.json
  def destroy
    @event_partnership.destroy!

    respond_to do |format|
      format.html { redirect_to event_partnerships_url, notice: "Event partnership was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_partnership
      @event_partnership = EventPartnership.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def event_partnership_params
      params.require(:event_partnership).permit(:event_id, :partnership_id)
    end
end
