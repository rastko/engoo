class Lesson < ActiveRecord::Base
  belongs_to :member
  belongs_to :schedule, :dependent => :destroy

  scope :by_schedule, ->(member_id) { where(member_id: member_id).includes(:schedule).where(schedules: { date_start: Time.current + 20.minutes..Time.current + 7.days } ).all }
 end
