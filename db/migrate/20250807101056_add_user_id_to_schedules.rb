class AddUserIdToSchedules < ActiveRecord::Migration[8.0]
  def change
    add_column :schedules, :user_id, :integer
  end
end
