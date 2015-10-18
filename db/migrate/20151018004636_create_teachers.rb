class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :email
      t.string :avatar_url
      t.integer :gender
      t.string :nationality

      t.timestamps null: false
    end
  end
end
