class Teacher < ActiveRecord::Base
  enum gender: [:male, :female]
  has_many :schedules

  validates_presence_of :name, :gender, :email, :avatar_url, :nationality

  def today_schedule start_time, end_time
    self.schedules.where(schedules: { date_start: start_time..end_time  } )
  end
end
