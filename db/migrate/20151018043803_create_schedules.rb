class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.integer :status
      t.references :teacher
      t.datetime :date_start

      t.timestamps null: false
    end
  end
end
