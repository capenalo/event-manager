class Api::EventsController < ApplicationController
  before_action :set_event_types, :set_transport_types
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  before_action :all_events, only:[:index, :create, :destroy, :update]

  # GET /events
  # GET /events.json
  def all_events
    @events = Event.all
  end

  # GET /events/1
  # GET /events/1.json
  def show
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        format.json { render :show, status: :created, location: @event }
      else
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.json { render :show, status: :ok, location: @event }
      else
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:event_name, :event_country, :event_city, :start_date, :end_date, :event_description, :venue_address, :event_tickets, :event_type, :transport_type, :transport_name, :transport_booking, :transport_phone, :transport_info, :hotel_name, :hotel_address, :hotel_phone, :additional_details, :user_id).merge(user: current_user)
    end
    
    def set_event_types
      @event_types = Event.event_types
    end
    
    def set_transport_types
      @transport_types = Event.transport_types
    end
end
