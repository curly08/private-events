class EventAttendingsController < ApplicationController
  before_action :find_event
  before_action :authenticate_user!, only: %i[create]

  def create
    @event.event_attendings.create(event_attendee_id: current_user.id)
    redirect_to @event
  end

  private

  def find_event
    @event = Event.find(params[:event_id])
  end
end
