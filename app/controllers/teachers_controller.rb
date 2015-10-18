class TeachersController < ApplicationController

  def index
    day = params[:day_id].to_i || 0

    @teachers = Teacher.all().paginate(page: params[:page], per_page: 3)
    @start_time = Time.current.beginning_of_day + day.days
    @end_time = Time.current.end_of_day + day.days

    @interval = [@start_time].tap { |array| array << array.last + 30.minutes while array.last < @end_time }
    @interval.pop()
  end

end
