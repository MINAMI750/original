class CreateScheduleTagRelations < ActiveRecord::Migration[8.0]
  def change
    create_table :schedule_tag_relations do |t|
      t.references :schedule, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
