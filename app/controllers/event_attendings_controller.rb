class EventAttendingsController < ApplicationController
  before_action :find_event
  before_action :authenticate_user!, only: %i[create]

  def create
    if already_attending?
      flash[:notice] = 'You are already attending.'
    else
      @event.event_attendings.create(event_attendee_id: current_user.id)
    end
    redirect_to @event
  end

  private

  def find_event
    @event = Event.find(params[:event_id])
  end

  def already_attending?
    EventAttending.where(event_attendee_id: current_user.id, attended_event_id: @event.id).exists?
  end
end
