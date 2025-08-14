class AddImageToSchedules < ActiveRecord::Migration[8.0]
  def change
    add_column :schedules, :image, :string
  end
end
