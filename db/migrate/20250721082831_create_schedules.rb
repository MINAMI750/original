class CreateSchedules < ActiveRecord::Migration[8.0]
  def change
    create_table :schedules do |t|
      t.string :title
      t.string :cost
      t.string :item
      t.text :comment

      t.timestamps
    end
  end
end
