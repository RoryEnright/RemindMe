# frozen_string_literal: true
class RemindersController < OpenReadController
  before_action :set_reminder, only: [:update, :destroy]

  # GET /reminders
  def index
    @reminders = Reminder.all

    render json: @reminders
  end

  # GET /reminders/1
  def show
    render json: Reminder.find(params[:id])
  end

  # POST /reminders
  def create
    @reminder = current_user.reminders.build(reminder_params)

    if @reminder.save
      render json: @reminder, status: :created, location: @reminder
    else
      render json: @reminder.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /reminders/1
  def update
    if @reminder.update(reminder_params)
      head :no_content
      # render json: @reminder
    else
      render json: @reminder.errors, status: :unprocessable_entity
    end
  end

  # DELETE /reminders/1
  def destroy
    @reminder.destroy

    head :no_content
  end

  def set_reminder
    @reminder = current_user.reminders.find(params[:id])
  end
  #  Use callbacks to share common setup or constraints between actions.
  #  Only allow a trusted parameter "white list" through.

  def reminder_params
    params.require(:reminder).permit(:content, :day, :when)
  end

  private :set_reminder, :reminder_params
end
