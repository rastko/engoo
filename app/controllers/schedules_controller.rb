class SchedulesController < ApplicationController
  respond_to :json
  before_action :check_params

  def create
    puts params[:teacherId].inspect
    puts params[:date].inspect
    begin
      schedule = Schedule.new(teacher_id: params[:teacherId], date_start: params[:date])
      schedule.build_lesson(member_id: current_member[:id])
      schedule.save
      render json: schedule.to_json
    rescue
      render json: "Error, please try again".to_json, status: 400
    end
  end

  private

  def check_params
    unless params[:teacherId] and params[:date] and current_member
      render json: 400
    end
  end
end