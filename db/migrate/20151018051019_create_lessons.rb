class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.references :member
      t.references :schedule

      t.timestamps null: false
    end
  end
end
