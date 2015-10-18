class LessonsController < ApplicationController

  def index
    @lessons = Lesson.by_schedule(current_member.id)
  end

  def destroy
    Lesson.find(params[:id]).destroy
    respond_to do |format|
      format.json { render :json => "Good riddance!".to_json, status: 200 }
    end
  end

end
