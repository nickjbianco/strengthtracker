class CreateGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :goals do |t|
      t.string :squat
      t.string :bench
      t.string :deadlift
      t.string :bodyweight
      t.date :date

      t.timestamps
    end
  end
end
