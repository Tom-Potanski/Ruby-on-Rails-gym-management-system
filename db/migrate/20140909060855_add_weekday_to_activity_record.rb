class AddWeekdayToActivityRecord < ActiveRecord::Migration
  def change
    add_column :activity_records, :weekday_id, :integer
    add_column :activity_records, :start_time, :integer
  end
end
